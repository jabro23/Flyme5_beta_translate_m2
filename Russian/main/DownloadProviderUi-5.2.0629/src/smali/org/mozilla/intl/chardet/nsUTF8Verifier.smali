.class public Lorg/mozilla/intl/chardet/nsUTF8Verifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    const v7, 0x66666666

    const v6, 0x44444444

    const/16 v5, 0x10

    const v4, 0x55555555

    const v3, 0x11111111

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x1

    const v2, 0x111111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const v1, 0x33332222

    aput v1, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x11

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x12

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x13

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x14

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x15

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x18

    const v2, 0x66666600

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x19

    aput v7, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1a

    aput v7, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1b

    aput v7, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1c

    const v2, -0x77777779

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1d

    const v2, -0x77677778

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1e

    const v2, -0x44444446

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0xfedddc

    aput v2, v0, v1

    const/16 v0, 0x1a

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x0

    const v2, -0x53eeeeff

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x1

    const v2, 0x345678b9

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x4

    const v2, 0x22222222

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x5

    const v2, 0x22222222

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x6

    const v2, 0x11555511

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x8

    const v2, 0x11555111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xa

    const v2, 0x11777711

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xc

    const v2, 0x11771111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xe

    const v2, 0x11999911

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const v1, 0x11911111

    aput v1, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x11

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x12

    const v2, 0x11cccc11

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x13

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x14

    const v2, 0x11c11111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x16

    const v2, 0x111ccc11

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x18

    const v2, 0x11000011

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->states:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    const-string v0, "UTF-8"

    sput-object v0, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->charset:Ljava/lang/String;

    sput v5, Lorg/mozilla/intl/chardet/nsUTF8Verifier;->stFactor:I

    return-void
.end method
