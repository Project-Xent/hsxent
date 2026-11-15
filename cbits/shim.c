#include <fluxent/flux_app.h>
#include <fluxent/flux_controls.h>
#include <fluxent/flux_host.h>
#include <xtk/xtk_catalog.h>
#include <xtk/xtk_scene.h>

#include <stdlib.h>

static XtkNodeRef ref(int kind, uint64_t value) {
	if (kind == XTK_REF_EXISTING) return xtk_ref_existing(( XtkCtrl ) value);
	if (kind == XTK_REF_LOCAL) return xtk_ref_local(( XtkLocalId ) value);
	return xtk_ref_none();
}

static XtkValue value(int kind, int64_t i, double d, char const *s, uint32_t len) {
	XtkValue v = {.kind = ( XtkValueKind ) kind};
	switch (kind) {
	case XTK_VALUE_BOOL     : v.u.b = i != 0; break;
	case XTK_VALUE_I32      : v.u.i32 = ( int32_t ) i; break;
	case XTK_VALUE_F32      : v.u.f32 = ( float ) d; break;
	case XTK_VALUE_F64      : v.u.f64 = d; break;
	case XTK_VALUE_ENUM     : v.u.u32 = ( uint32_t ) i; break;
	case XTK_VALUE_COLOR    : v.u.color.rgba = ( uint32_t ) i; break;
	case XTK_VALUE_RESOURCE : v.u.resource = ( XtkResource ) i; break;
	case XTK_VALUE_STRING   :
		v.u.string.data = ( char * ) s;
		v.u.string.len  = len;
		break;
	default : break;
	}
	return v;
}

XtkScene *hsx_scene_new(XtkHost *host) {
	XtkScene *scene = malloc(sizeof(*scene));
	if (scene) *scene = xtk_scene_fromhost(host);
	return scene;
}

void     hsx_scene_free(XtkScene *scene) { free(scene); }

XtkTxn  *hsx_txn_begin(XtkScene *scene) {
	XtkTxn *txn = malloc(sizeof(*txn));
	if (txn && xtk_txn_begin(scene, txn)) return txn;
	free(txn);
	return NULL;
}

XtkBatchResult *hsx_txn_commit(XtkTxn *txn, int32_t *diag) {
	XtkBatchDiag    d      = {0};
	XtkBatchResult *result = xtk_txn_commit(txn, &d);
	diag [0]               = ( int32_t ) d.stage;
	diag [1]               = ( int32_t ) d.error;
	diag [2]               = ( int32_t ) d.failed_op;
	free(txn);
	return result;
}

void hsx_txn_abort(XtkTxn *txn) {
	xtk_txn_abort(txn);
	free(txn);
}

XtkPropPatch *hsx_patches(uint32_t count) { return calloc(count ? count : 1u, sizeof(XtkPropPatch)); }

void          hsx_patch(
  XtkPropPatch *patches, uint32_t index, uint32_t id, int kind, int64_t i, double d, char const *s, uint32_t len
) {
	patches [index] = (XtkPropPatch) {.id = id, .value = value(kind, i, d, s, len)};
}

XtkLocalId hsx_create(
  XtkTxn *txn, uint32_t type, int pk, uint64_t pv, int bk, uint64_t bv, XtkPropPatch const *props, uint32_t count
) {
	return xtk_txn_create(txn, type, ref(pk, pv), ref(bk, bv), props, count);
}

bool hsx_set(
  XtkTxn *txn, uint64_t ctrl, uint32_t id, int kind, int64_t i, double d, char const *s, uint32_t len, uint64_t source,
  uint64_t revision
) {
	XtkChangeStamp stamp = {.source = source, .revision = revision};
	return xtk_txn_set(txn, xtk_ref_existing(ctrl), id, value(kind, i, d, s, len), stamp);
}

bool hsx_drop(XtkTxn *txn, uint64_t ctrl) { return xtk_txn_drop(txn, xtk_ref_existing(ctrl)); }

bool hsx_move(XtkTxn *txn, uint64_t parent, int ck, uint64_t cv, int bk, uint64_t bv) {
	return xtk_txn_move(txn, xtk_ref_existing(parent), ref(ck, cv), ref(bk, bv));
}

XtkSubRef hsx_on(XtkTxn *txn, int kind, uint64_t target, uint32_t event, XtkEventFn fn, void *arg) {
	return xtk_txn_on(txn, ref(kind, target), event, XTK_EVENT_PHASE_MASK_TARGET, fn, arg);
}

XtkCtrl  hsx_result_control(XtkBatchResult const *result, uint32_t local) { return result->controls [local].control; }

XtkSubId hsx_result_sub(XtkBatchResult const *result, uint32_t token) { return result->subscriptions [token].id; }

FluxApp *hsx_app_create(wchar_t const *title, int width, int height, int theme) {
	FluxAppCfg cfg = {
	  .title     = title,
	  .width     = width,
	  .height    = height,
	  .theme     = ( FluxThemeMode ) theme,
	  .backdrop  = FLUX_BACKDROP_MICA,
	};
	flux_controls_all();
	return flux_app_create(&cfg);
}
