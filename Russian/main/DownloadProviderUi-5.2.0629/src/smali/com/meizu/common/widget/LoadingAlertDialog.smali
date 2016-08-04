.class public Lcom/meizu/common/widget/LoadingAlertDialog;
.super Landroid/app/AlertDialog;
.source "LoadingAlertDialog.java"


# instance fields
.field private mApplyContentLayout:Landroid/widget/RelativeLayout;

.field private mLoadingAnimationView:Lcom/meizu/common/widget/LoadingAnimotionView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->create()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public cancelDialog()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->cancel()V

    .line 71
    return-void
.end method

.method public hideDialog()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->hide()V

    .line 66
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 37
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x3f333333    # 0.7f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 39
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const v1, 0x7f040026

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingAlertDialog;->setContentView(I)V

    .line 41
    const v1, 0x7f0d0093

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    .line 43
    const v1, 0x7f0d0094

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/LoadingAnimotionView;

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mLoadingAnimationView:Lcom/meizu/common/widget/LoadingAnimotionView;

    .line 44
    const v1, 0x7f0d0095

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingAlertDialog;->setCancelable(Z)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LoadingAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 49
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingAlertDialog;->show()V

    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingAlertDialog;->mApplyContentLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    return-void
.end method
