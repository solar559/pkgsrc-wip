# $NetBSD: buildlink3.mk,v 1.1 2016/03/10 15:01:52 tnn Exp $

BUILDLINK_TREE+=	libLLVM38

.if !defined(LIBLLVM38_BUILDLINK3_MK)
LIBLLVM38_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libLLVM38+=	libLLVM38>=3.8.0
BUILDLINK_PKGSRCDIR.libLLVM38?=		../../wip/libLLVM38

LLVM_CONFIG_PATH?=		${BUILDLINK_PREFIX.libLLVM38}/libexec/libLLVM38/llvm-config

.include "../../devel/zlib/buildlink3.mk"
.endif	# LLVM_BUILDLINK3_MK

BUILDLINK_TREE+=	-libLLVM38
