.class Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;
.super Ljava/lang/Object;
.source "MzSlidePopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/MzSlidePopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissAnimator"
.end annotation


# instance fields
.field private isRunning:Z

.field private mAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v7/internal/widget/MzSlidePopupWindow;
    .param p2, "x1"    # Landroid/support/v7/internal/widget/MzSlidePopupWindow$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;-><init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)V

    return-void
.end method

.method static synthetic access$302(Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->isRunning:Z

    return p1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->isRunning:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mOnTop:Z
    invoke-static {v1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$200(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 215
    .local v0, "endY":I
    :goto_0
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, v0

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 216
    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->mAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator$1;

    invoke-direct {v2, p0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator$1;-><init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 233
    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 234
    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->isRunning:Z

    .line 236
    return-void

    .line 214
    .end local v0    # "endY":I
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    # getter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow;->mContentView:Landroid/view/View;
    invoke-static {v1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->access$100(Landroid/support/v7/internal/widget/MzSlidePopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v0, v1

    goto :goto_0
.end method
