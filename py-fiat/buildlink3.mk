# $NetBSD: buildlink3.mk,v 1.3 2012/05/12 02:04:12 outpaddling Exp $

BUILDLINK_TREE+=	py26-fiat

.if !defined(PY26_FIAT_BUILDLINK3_MK)
PY26_FIAT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fiat+=	${PYPKGPREFIX}-fiat>=1.0.0
BUILDLINK_PKGSRCDIR.fiat?=	../../wip/py-fiat
.endif	# PY26_FIAT_BUILDLINK3_MK

BUILDLINK_TREE+=	-fiat
