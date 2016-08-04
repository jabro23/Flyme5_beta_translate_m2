.class public Lcom/android/systemui/multiwindow/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/multiwindow/Utils;->mWhiteList:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
