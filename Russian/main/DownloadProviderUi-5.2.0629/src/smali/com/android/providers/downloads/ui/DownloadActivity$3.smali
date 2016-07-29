.class Lcom/android/providers/downloads/ui/DownloadActivity$3;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 206
    iput p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->mState:I

    .line 207
    if-eqz p1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$202(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mBusy:Z
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$202(Lcom/android/providers/downloads/ui/DownloadActivity;Z)Z

    .line 211
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mHomepageViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$000(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadingAdapter:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$300(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/app/ActionBar;->setTabScrolled(IFI)V

    .line 202
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v7/app/ActionBar;->getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->selectTab(Landroid/support/v7/app/ActionBar$Tab;)V

    .line 193
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$100(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 195
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$3;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$102(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 197
    :cond_0
    return-void
.end method
