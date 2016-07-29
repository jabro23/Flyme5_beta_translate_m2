.class Lcom/meizu/common/widget/CustomDatePickerDialog$3;
.super Ljava/lang/Object;
.source "CustomDatePickerDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;->setTabColor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

.field final synthetic val$colorAnimation:Landroid/animation/ValueAnimator;

.field final synthetic val$isLunar:Z

.field final synthetic val$unselectedTabColor:I


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog;Landroid/animation/ValueAnimator;ZI)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iput-object p2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$colorAnimation:Landroid/animation/ValueAnimator;

    iput-boolean p3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$isLunar:Z

    iput p4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$unselectedTabColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .param p1, "aValueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 306
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$colorAnimation:Landroid/animation/ValueAnimator;

    const-string v5, "RgbRed"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 307
    .local v3, "rgbRed":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$colorAnimation:Landroid/animation/ValueAnimator;

    const-string v5, "RgbGreen"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 308
    .local v2, "rgbGreen":I
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$colorAnimation:Landroid/animation/ValueAnimator;

    const-string v5, "RgbBlue"

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 309
    .local v1, "rgbBlue":I
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    .line 310
    .local v0, "color":I
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$isLunar:Z

    if-eqz v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$300(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 312
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$400(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$unselectedTabColor:I

    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iget v6, v6, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mLunarTab:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$300(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->val$unselectedTabColor:I

    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    iget v6, v6, Lcom/meizu/common/widget/CustomDatePickerDialog;->tabTextSelectColor:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$3;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    # getter for: Lcom/meizu/common/widget/CustomDatePickerDialog;->mGregorianTab:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$400(Lcom/meizu/common/widget/CustomDatePickerDialog;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
