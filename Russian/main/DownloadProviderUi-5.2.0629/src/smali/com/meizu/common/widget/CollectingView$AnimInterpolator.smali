.class Lcom/meizu/common/widget/CollectingView$AnimInterpolator;
.super Ljava/lang/Object;
.source "CollectingView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CollectingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CollectingView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/CollectingView;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView$AnimInterpolator;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/CollectingView;Lcom/meizu/common/widget/CollectingView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/CollectingView;
    .param p2, "x1"    # Lcom/meizu/common/widget/CollectingView$1;

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CollectingView$AnimInterpolator;-><init>(Lcom/meizu/common/widget/CollectingView;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 153
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
