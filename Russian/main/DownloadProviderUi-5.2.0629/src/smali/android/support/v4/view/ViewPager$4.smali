.class final Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .param p1, "input"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3880
    const/4 v2, 0x0

    .line 3881
    .local v2, "ret":F
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_0

    .line 3882
    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v4

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 3893
    :goto_0
    return v2

    .line 3883
    :cond_0
    cmpl-float v4, p1, v5

    if-ltz v4, :cond_1

    .line 3884
    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v4

    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v2, v4, v5

    goto :goto_0

    .line 3886
    :cond_1
    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float v3, v5, v4

    .line 3887
    .local v3, "segment":F
    div-float v4, p1, v3

    float-to-int v1, v4

    .line 3888
    .local v1, "index":I
    int-to-float v4, v1

    mul-float/2addr v4, v3

    sub-float v0, p1, v4

    .line 3889
    .local v0, "extra":F
    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v4

    aget v4, v4, v1

    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    # getter for: Landroid/support/v4/view/ViewPager;->OVERLAY_MODE_INTERPOLATIONS:[F
    invoke-static {}, Landroid/support/v4/view/ViewPager;->access$500()[F

    move-result-object v6

    aget v6, v6, v1

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v5, v3

    add-float v2, v4, v5

    goto :goto_0
.end method
