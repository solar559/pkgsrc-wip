# $NetBSD$

DISTNAME=	python-decouple-3.1
PKGNAME=        ${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	sysutils
MASTER_SITES=   ${MASTER_SITE_PYPI:=p/python-decouple/}

MAINTAINER=     kethzer.dr@gmail.com
HOMEPAGE=	http://github.com/henriquebastos/python-decouple/
COMMENT=	Strict separation of settings from code
LICENSE=	mit

DEPENDS+=       ${PYPKGPREFIX}-setuptools>=18.5:../../devel/py-setuptools

.include "../../lang/python/egg.mk"
WRKSRC=		${WRKDIR}/python-decouple-3.1
USE_LANGUAGES=	# none

.include "../../mk/bsd.pkg.mk"
