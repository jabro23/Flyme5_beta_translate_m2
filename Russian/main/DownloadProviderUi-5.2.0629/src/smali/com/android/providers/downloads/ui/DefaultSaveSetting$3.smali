.class Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;
.super Ljava/lang/Object;
.source "DefaultSaveSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DefaultSaveSetting;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # setter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v1, p2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$002(Lcom/android/providers/downloads/ui/DefaultSaveSetting;I)I

    .line 209
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "delete_limit"

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "delete_limit_settime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$200(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->notifyDataSetChanged()V

    .line 213
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->setHistoryClearTime(I)V

    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    sget-boolean v1, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "now"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hour"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "day"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "week"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "never"

    aput-object v2, v0, v1

    .line 217
    .local v0, "valueMap":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    const-string v2, "Emptyset"

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v3

    aget-object v3, v0, v3

    invoke-static {v1, v2, v3}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v0    # "valueMap":[Ljava/lang/String;
    :cond_0
    return-void
.end method
