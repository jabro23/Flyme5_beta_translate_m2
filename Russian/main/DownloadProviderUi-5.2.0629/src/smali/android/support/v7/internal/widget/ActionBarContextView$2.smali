.class Landroid/support/v7/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/internal/widget/ActionBarContextView;->multiChoiceMenuViewAnimateToVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActionBarContextView;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarContextView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 650
    iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContextView$2;->this$0:Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/internal/widget/ActionBarContextView$2;->val$viewToAnimate:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    .line 653
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView$2;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 654
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 655
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView$2;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 656
    .local v1, "startingY":F
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView$2;->val$viewToAnimate:Landroid/view/View;

    invoke-static {v3, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 657
    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContextView$2;->val$viewToAnimate:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 658
    .local v0, "anim":Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    const-wide/16 v4, 0x104

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 659
    # getter for: Landroid/support/v7/internal/widget/ActionBarContextView;->MULTI_CHOICE_ANIMATION_INTERPOLATOR_IN:Landroid/view/animation/Interpolator;
    invoke-static {}, Landroid/support/v7/internal/widget/ActionBarContextView;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 660
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 661
    const/4 v3, 0x0

    return v3
.end method
