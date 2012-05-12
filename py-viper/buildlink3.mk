# $NetBSD: buildlink3.mk,v 1.3 2012/05/12 02:04:12 outpaddling Exp $

BUILDLINK_TREE+=	py26-viper

.if !defined(PY26_VIPER_BUILDLINK3_MK)
PY26_VIPER_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.viper+=	${PYPKGPREFIX}-viper>=1.0.0
BUILDLINK_PKGSRCDIR.viper?=	../../wip/py-viper
.endif	# PY26_VIPER_BUILDLINK3_MK

BUILDLINK_TREE+=	-viper
