# $NetBSD$
#
###########################################################
#                  Generated by fbsd2pkg                  #
#              Thu Nov  2 10:04:18 CDT 2017               #
###########################################################

###########################################################
# Unconverted and partially converted FreeBSD port syntax:

#post-install:
#	${STRIP} \
#		${DESTDIR}${PYTHON_SITELIBDIR}/MACS2/*.so \
#		${DESTDIR}${PYTHON_SITELIBDIR}/MACS2/*/*.so

DISTNAME=	macs2-${PORTVERSION}
PKGNAME=	${PYPKGPREFIX}-macs2-${PORTVERSION}
CATEGORIES=	biology
MASTER_SITES=	${MASTER_SITE_GITHUB:=taoliu/}
GITHUB_PROJECT=	MACS
GITHUB_TAG=	6946b2f6571cd0a7cfbb882c79aaa25a05a5c48d

MAINTAINER=	bacon@NetBSD.org
HOMEPAGE=	https://pypi.python.org/pypi/macs2
COMMENT=	Novel algorithm for identifying transcript factor binding sites
# Check this
LICENSE=	modified-bsd

# Test and change if necessary.
# MAKE_JOBS_SAFE=	no

# Just assuming C and C++: Adjust this!
USE_LANGUAGES=	c c++
PYDISTUTILSPKG=	yes

PORTVERSION=	2017.05.05

post-patch:
	${MV} -f ${WRKSRC}/setup_w_cython.py ${WRKSRC}/setup.py

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../math/blas/buildlink3.mk"
.include "../../devel/py-cython/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
