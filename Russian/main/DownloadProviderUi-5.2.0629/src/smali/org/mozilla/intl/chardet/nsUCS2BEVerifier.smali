.class public Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    aput v3, v0, v3

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const v1, 0x200100

    aput v1, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    aput v3, v0, v6

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x3000

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/4 v1, 0x5

    const v2, 0x333330

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    aput v3, v0, v4

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x14

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->cclass:[I

    const/16 v1, 0x1f

    const/high16 v2, 0x54000000

    aput v2, v0, v1

    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const v1, 0x11341775

    aput v1, v0, v3

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const v1, 0x22221111

    aput v1, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const v1, 0x11666622

    aput v1, v0, v6

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const v1, 0x66266666

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x17756666

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const/4 v1, 0x5

    const v2, 0x66616685

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->states:[I

    const v1, 0x116666

    aput v1, v0, v4

    const-string v0, "UTF-16BE"

    sput-object v0, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->charset:Ljava/lang/String;

    sput v4, Lorg/mozilla/intl/chardet/nsUCS2BEVerifier;->stFactor:I

    return-void
.end method
