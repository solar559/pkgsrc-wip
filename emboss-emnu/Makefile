# $NetBSD: Makefile,v 1.5 2012/09/02 11:14:10 noud4 Exp $
#

.include "../emboss-base/Makefile.common"
.include "../emboss/Makefile.common"

DISTNAME=		EMNU-1.05
PKGNAME=		emboss-emnu-1.05
PKGREVISION=		1

COMMENT=		Simple menu for EMBOSS applications
LICENSE=	gnu-gpl-v2

BUILD_TARGET=		#empty
DIST_SUBDIR=		emboss/emnu-1.05-20041107
GNU_CONFIGURE=		yes
#ncurses required for the redrawwin function
USE_NCURSES=		yes

pre-configure:
	${SED} -e 's|../../../plplot/libplplot.la|${PREFIX}/lib/libplplot.la|' \
	       -e 's|../../../ajax/libajax.la|${PREFIX}/lib/libajax.la|' \
	       -e 's|../../../nucleus/libnucleus.la|${PREFIX}/lib/libnucleus.la|' \
	       -e 's|@NCURSES@|-L${PREFIX}/lib -lncurses|' \
	       -e 's|@X116@|-Wl,-R${X11BASE}/lib|' \
	       -e 's|@INCLUDE@|-I${PREFIX}/include/emboss|' \
		${WRKSRC}/source/Makefile.in > ${WRKSRC}/source/Makefile.in.bak
	${MV} ${WRKSRC}/source/Makefile.in.bak ${WRKSRC}/source/Makefile.in
	${SED} -e 's|@X116@|-Wl,-R${X11BASE}/lib|' \
		${WRKSRC}/Makefile.in > ${WRKSRC}/Makefile.in.bak
	${MV} ${WRKSRC}/Makefile.in.bak ${WRKSRC}/Makefile.in




.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
