.class public Lorg/mozilla/intl/chardet/nsEUCJPVerifier;
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

    const v6, 0x55555555

    const/4 v5, 0x0

    const v4, 0x22222222

    const v3, 0x44444444

    invoke-direct {p0}, Lorg/mozilla/intl/chardet/nsVerifier;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    aput v3, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const v1, 0x55444444

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x3

    const v2, 0x44445444

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x4

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x5

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x6

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/4 v1, 0x7

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x8

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x9

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0xb

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0xd

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0xe

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0xf

    aput v3, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x10

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x11

    const v2, 0x31555555

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x12

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x13

    aput v6, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x14

    const v2, 0x22222225

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x15

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x16

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x17

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x18

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x19

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x1a

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x1b

    aput v4, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x1c

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x1d

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x1e

    aput v5, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->cclass:[I

    const/16 v1, 0x1f

    const/high16 v2, 0x50000000

    aput v2, v0, v1

    const/4 v0, 0x5

    new-array v0, v0, [I

    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    const v1, 0x11105343

    aput v1, v0, v5

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    const v1, 0x22221111

    aput v1, v0, v7

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    const/4 v1, 0x2

    const v2, 0x11101022

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    const/4 v1, 0x3

    const v2, 0x13111011

    aput v2, v0, v1

    sget-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->states:[I

    const/4 v1, 0x4

    const/16 v2, 0x1113

    aput v2, v0, v1

    const-string v0, "EUC-JP"

    sput-object v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->charset:Ljava/lang/String;

    const/4 v0, 0x6

    sput v0, Lorg/mozilla/intl/chardet/nsEUCJPVerifier;->stFactor:I

    return-void
.end method
