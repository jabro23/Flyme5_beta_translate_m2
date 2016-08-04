.class Lcom/android/providers/downloads/ui/DownloadActivity$12;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;->newTextWatcher(Landroid/support/v7/app/AlertDialog;Landroid/view/View;)Landroid/text/TextWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private inited:Z

.field private isValide:Z

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

.field final synthetic val$alertDialog:Landroid/support/v7/app/AlertDialog;

.field final synthetic val$hints:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->val$hints:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->isValide:Z

    .line 1211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->inited:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1226
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1227
    .local v1, "empty":Z
    iget-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->inited:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->isValide:Z

    if-ne v1, v4, :cond_2

    .line 1228
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->val$alertDialog:Landroid/support/v7/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 1229
    .local v0, "button":Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 1230
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1234
    :goto_0
    if-nez v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->isValide:Z

    .line 1235
    iput-boolean v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->inited:Z

    .line 1237
    .end local v0    # "button":Landroid/widget/Button;
    :cond_2
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$12;->val$hints:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1238
    return-void

    .line 1232
    .restart local v0    # "button":Landroid/widget/Button;
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1221
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1216
    return-void
.end method
