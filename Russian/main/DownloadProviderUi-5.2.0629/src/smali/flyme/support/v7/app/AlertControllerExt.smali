.class public Lflyme/support/v7/app/AlertControllerExt;
.super Ljava/lang/Object;
.source "AlertControllerExt.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lflyme/support/v7/app/AlertControllerExt;->mContext:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lflyme/support/v7/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    .line 26
    iput-object p2, p0, Lflyme/support/v7/app/AlertControllerExt;->mDialogInterface:Landroid/content/DialogInterface;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/app/AlertControllerExt;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lflyme/support/v7/app/AlertControllerExt;

    .prologue
    .line 13
    iget-object v0, p0, Lflyme/support/v7/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 50
    iput-object p1, p0, Lflyme/support/v7/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    .line 51
    return-void
.end method

.method public setupContent()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lflyme/support/v7/app/AlertControllerExt;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lflyme/support/v7/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    .line 31
    iget-object v0, p0, Lflyme/support/v7/app/AlertControllerExt;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lflyme/support/v7/app/AlertControllerExt;->mMessageView:Landroid/widget/TextView;

    new-instance v1, Lflyme/support/v7/app/AlertControllerExt$1;

    invoke-direct {v1, p0}, Lflyme/support/v7/app/AlertControllerExt$1;-><init>(Lflyme/support/v7/app/AlertControllerExt;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 47
    :cond_0
    return-void
.end method
