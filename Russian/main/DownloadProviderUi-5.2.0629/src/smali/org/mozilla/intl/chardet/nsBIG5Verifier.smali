.class public Lorg/mozilla/intl/chardet/nsBIG5Verifier;
.super Lorg/mozilla/intl/chardet/nsVerifier;


# static fields
.field static cclass:[I

.field static charset:Ljava/lang/String;

.field static stFactor:I

.field static states:[I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x1

    const v6, 0x44444444

    const v5, 0x11111111

    const v4, 0x22222222

    const v3, 0x33333333

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x0

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const v1, 0x111111

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x2

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x11110111

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x4

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x6

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/4 v1, 0x7

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x8

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x9

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0xa

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0xb

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0xc

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0xd

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0xe

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0xf

    const v2, 0x12222222

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x10

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x11

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x12

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x13

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x14

    const v2, 0x33333334

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x15

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x16

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x17

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x18

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x19

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x1a

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x1b

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x1c

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x1d

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x1e

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->cclass:[I

    const/16 v1, 0x1f

    const v2, 0x3333333

    aput v2, v0, v1

    const/4 v0, 0x3

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->states:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->states:[I

    const/4 v1, 0x0

    const v2, 0x11113001

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->states:[I

    const v1, 0x12222211

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->states:[I

    const/4 v1, 0x2

    aput v7, v0, v1

    const-string v0, "Big5"

    sput-object v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->charset:Ljava/lang/String;

    const/4 v0, 0x5

    sput v0, Lorg/mozilla/intl/chardet/nsBIG5Verifier;->stFactor:I

    return-void
.end method
