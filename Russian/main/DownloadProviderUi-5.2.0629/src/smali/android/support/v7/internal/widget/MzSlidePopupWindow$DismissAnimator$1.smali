.class Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator$1;
.super Ljava/lang/Object;
.source "MzSlidePopupWindow.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator$1;->this$1:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator$1;->this$1:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    iget-object v0, v0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->this$0:Landroid/support/v7/internal/widget/MzSlidePopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/MzSlidePopupWindow;->supperDismiss()V

    .line 225
    iget-object v0, p0, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator$1;->this$1:Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->isRunning:Z
    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;->access$302(Landroid/support/v7/internal/widget/MzSlidePopupWindow$DismissAnimator;Z)Z

    .line 226
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 231
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 220
    return-void
.end method
