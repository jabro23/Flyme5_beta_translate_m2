.class public Lcom/meizu/common/app/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private dimAmount:F

.field private isCancelable:Z

.field private mBackgrond:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mLoadingView:Lcom/meizu/common/widget/LoadingView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mParentPanel:Landroid/widget/LinearLayout;

.field private mTextColor:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const v0, 0x7f0c021c

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/meizu/common/app/LoadingDialog;->dimAmount:F

    .line 43
    invoke-virtual {p0}, Lcom/meizu/common/app/LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    .line 45
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget v0, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 94
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    :cond_1
    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mParentPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mParentPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/meizu/common/app/LoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/meizu/common/app/LoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/meizu/common/app/LoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "cancelable"    # Z

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/meizu/common/app/LoadingDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "cancelable"    # Z
    .param p4, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 59
    new-instance v0, Lcom/meizu/common/app/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/meizu/common/app/LoadingDialog;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "dialog":Lcom/meizu/common/app/LoadingDialog;
    invoke-virtual {v0, p1}, Lcom/meizu/common/app/LoadingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, p3}, Lcom/meizu/common/app/LoadingDialog;->setCancelable(Z)V

    .line 63
    invoke-virtual {v0, p4}, Lcom/meizu/common/app/LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 64
    invoke-virtual {v0}, Lcom/meizu/common/app/LoadingDialog;->show()V

    .line 65
    return-object v0
.end method


# virtual methods
.method public isCancelable()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/meizu/common/app/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    .line 72
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 73
    const v0, 0x7f040039

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setContentView(I)V

    .line 74
    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/LoadingView;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingView:Lcom/meizu/common/widget/LoadingView;

    .line 75
    const v0, 0x7f0d00d5

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0d0055

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mParentPanel:Landroid/widget/LinearLayout;

    .line 77
    invoke-direct {p0}, Lcom/meizu/common/app/LoadingDialog;->initView()V

    .line 78
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 103
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingView:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingView;->startAnimator()V

    .line 104
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/meizu/common/app/LoadingDialog;->mBackgrond:Landroid/graphics/drawable/Drawable;

    .line 156
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_0
    return-void
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    return-void
.end method

.method public setBarBackground(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingView:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/LoadingView;->setBarBackgroundColor(I)V

    .line 165
    return-void
.end method

.method public setBarForeground(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mLoadingView:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/LoadingView;->setBarColor(I)V

    .line 162
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 133
    iput-boolean p1, p0, Lcom/meizu/common/app/LoadingDialog;->isCancelable:Z

    .line 134
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 144
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->dimAmount:F

    .line 145
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    .line 148
    :cond_0
    return-void
.end method

.method public setMessage(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/common/app/LoadingDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    return-void
.end method

.method public setMessageTextColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    .line 120
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mMessageView:Landroid/widget/TextView;

    iget v1, p0, Lcom/meizu/common/app/LoadingDialog;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public setMessageTextColorResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/meizu/common/app/LoadingDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/app/LoadingDialog;->setMessageTextColor(I)V

    .line 127
    return-void
.end method
