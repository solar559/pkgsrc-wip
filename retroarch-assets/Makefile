# $NetBSD$

DISTNAME=		RetroArch
PKGNAME=		retroarch-assets-1.7.1
CATEGORIES=		emulators
MASTER_SITES=		http://buildbot.libretro.com/stable/${PKGVERSION_NOREV}/windows-msvc2010/x86_64/
EXTRACT_SUFX=		.7z

MAINTAINER=		nia.alarie@gmail.com
HOMEPAGE=		http://www.retroarch.com/
COMMENT=		Assets for RetroArch
#LICENSE=		cc-by-v4.0

USE_LANGUAGES=		# none
NO_BUILD=		yes

WRKSRC=			${WRKDIR}

RA_ASSET_DIRS+=		branding
RA_ASSET_DIRS+=		glui
RA_ASSET_DIRS+=		xmb
RA_ASSET_DIRS+=		xmb/dot-art
RA_ASSET_DIRS+=		xmb/dot-art/png
RA_ASSET_DIRS+=		xmb/flatui
RA_ASSET_DIRS+=		xmb/flatui/png
RA_ASSET_DIRS+=		xmb/monochrome
RA_ASSET_DIRS+=		xmb/monochrome/png
RA_ASSET_DIRS+=		xmb/monochrome-inverted
RA_ASSET_DIRS+=		xmb/monochrome-inverted/png
RA_ASSET_DIRS+=		xmb/neoactive
RA_ASSET_DIRS+=		xmb/neoactive/png
RA_ASSET_DIRS+=		xmb/pixel
RA_ASSET_DIRS+=		xmb/pixel/png
RA_ASSET_DIRS+=		xmb/retroactive
RA_ASSET_DIRS+=		xmb/retroactive/png
RA_ASSET_DIRS+=		xmb/retrosystem
RA_ASSET_DIRS+=		xmb/retrosystem/png
RA_ASSET_DIRS+=		xmb/systematic
RA_ASSET_DIRS+=		xmb/systematic/png

.for i in ${RA_ASSET_DIRS}
INSTALLATION_DIRS+=	share/retroarch/assets/${i}
.endfor

do-install:
.for dir in ${RA_ASSET_DIRS}
.  for type in ttf png
	if ${LS} -1 ${WRKSRC}/assets/${dir} | ${GREP} -q .${type}$$; then \
		${INSTALL_DATA} ${WRKSRC}/assets/${dir}/*.${type} \
		    ${DESTDIR}${PREFIX}/share/retroarch/assets/${dir}; fi
.  endfor
.endfor

.include "../../mk/bsd.pkg.mk"
