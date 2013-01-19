# $NetBSD: buildlink3.mk,v 1.6 2013/01/19 12:25:39 othyro Exp $

BUILDLINK_TREE+=	ode

.if !defined(ODE_BUILDLINK3_MK)
ODE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.ode+=	ode>=0.11.1
BUILDLINK_ABI_DEPENDS.ode+=	ode>=0.11.1
BUILDLINK_PKGSRCDIR.ode?=	../../wip/ode
.endif # ODE_BUILDLINK3_MK

BUILDLINK_TREE+=	-ode
