.class public final enum Landroid/support/v4/view/ViewPager$FlipMode;
.super Ljava/lang/Enum;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/v4/view/ViewPager$FlipMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v4/view/ViewPager$FlipMode;

.field public static final enum FLIP_MODE_DEFAULT:Landroid/support/v4/view/ViewPager$FlipMode;

.field public static final enum FLIP_MODE_OVERLAY:Landroid/support/v4/view/ViewPager$FlipMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Landroid/support/v4/view/ViewPager$FlipMode;

    const-string v1, "FLIP_MODE_DEFAULT"

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/ViewPager$FlipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/view/ViewPager$FlipMode;->FLIP_MODE_DEFAULT:Landroid/support/v4/view/ViewPager$FlipMode;

    new-instance v0, Landroid/support/v4/view/ViewPager$FlipMode;

    const-string v1, "FLIP_MODE_OVERLAY"

    invoke-direct {v0, v1, v3}, Landroid/support/v4/view/ViewPager$FlipMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/v4/view/ViewPager$FlipMode;->FLIP_MODE_OVERLAY:Landroid/support/v4/view/ViewPager$FlipMode;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/support/v4/view/ViewPager$FlipMode;

    sget-object v1, Landroid/support/v4/view/ViewPager$FlipMode;->FLIP_MODE_DEFAULT:Landroid/support/v4/view/ViewPager$FlipMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v4/view/ViewPager$FlipMode;->FLIP_MODE_OVERLAY:Landroid/support/v4/view/ViewPager$FlipMode;

    aput-object v1, v0, v3

    sput-object v0, Landroid/support/v4/view/ViewPager$FlipMode;->$VALUES:[Landroid/support/v4/view/ViewPager$FlipMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v4/view/ViewPager$FlipMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 162
    const-class v0, Landroid/support/v4/view/ViewPager$FlipMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager$FlipMode;

    return-object v0
.end method

.method public static values()[Landroid/support/v4/view/ViewPager$FlipMode;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/view/ViewPager$FlipMode;->$VALUES:[Landroid/support/v4/view/ViewPager$FlipMode;

    invoke-virtual {v0}, [Landroid/support/v4/view/ViewPager$FlipMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/view/ViewPager$FlipMode;

    return-object v0
.end method
