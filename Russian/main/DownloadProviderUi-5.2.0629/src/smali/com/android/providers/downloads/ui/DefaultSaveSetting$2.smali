.class Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;
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
    .line 171
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # setter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v0, p2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$002(Lcom/android/providers/downloads/ui/DefaultSaveSetting;I)I

    .line 174
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "max_downloads"

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$200(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->notifyDataSetChanged()V

    .line 177
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 178
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    const-string v1, "TaskNo."

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;->this$0:Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    # getter for: Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method
