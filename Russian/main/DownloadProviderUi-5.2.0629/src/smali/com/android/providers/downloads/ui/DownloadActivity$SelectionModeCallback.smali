.class Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModeCallback"
.end annotation


# instance fields
.field private mDeleteSelected:Landroid/view/MenuItem;

.field private mEType:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

.field private mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

.field private mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

.field private mSelectView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadActivity;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadActivity;Lflyme/support/v7/widget/MzRecyclerView;Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;)V
    .locals 0
    .param p2, "listView"    # Lflyme/support/v7/widget/MzRecyclerView;
    .param p3, "type"    # Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    .prologue
    .line 2030
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    .line 2032
    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mEType:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    .line 2034
    return-void
.end method

.method static synthetic access$3800(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Lflyme/support/v7/widget/MzRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)Landroid/support/v7/widget/MultiChoiceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    return-object v0
.end method

.method private deleteConfirmDialog(Lflyme/support/v7/widget/MzRecyclerView;)V
    .locals 12
    .param p1, "listview"    # Lflyme/support/v7/widget/MzRecyclerView;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const v9, -0xab51aa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2101
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const v3, 0x7f0c0154

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    new-array v2, v11, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const v4, 0x7f080058

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v6}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const v4, 0x7f080059

    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$4;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)V

    new-array v4, v11, [Landroid/content/res/ColorStateList;

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, -0xd8ebff

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-virtual {v1, v2, v3, v7, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z[Landroid/content/res/ColorStateList;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$3;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$3;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1402(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/support/v7/app/AlertDialog;)Landroid/support/v7/app/AlertDialog;

    .line 2127
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDeleteDialog:Landroid/support/v7/app/AlertDialog;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$1400(Lcom/android/providers/downloads/ui/DownloadActivity;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 2128
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2132
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2141
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2134
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mEType:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    sget-object v1, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    if-ne v0, v1, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->deleteConfirmDialog(Lflyme/support/v7/widget/MzRecyclerView;)V

    goto :goto_0

    .line 2137
    :cond_0
    const-string v0, "DownloadActivity"

    const-string v1, "downloading list does not support actionmode delete"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2132
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0120
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2038
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$102(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2039
    new-instance v1, Landroid/support/v7/widget/MultiChoiceView;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/MultiChoiceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    .line 2040
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    invoke-virtual {v1}, Landroid/support/v7/widget/MultiChoiceView;->getSelectAllView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mSelectView:Landroid/widget/TextView;

    .line 2041
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$1;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/MultiChoiceView;->setOnCloseItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 2047
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback$2;-><init>(Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/MultiChoiceView;->setOnSelectAllItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 2066
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 2067
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mEType:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    sget-object v2, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    if-ne v1, v2, :cond_0

    .line 2068
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2069
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f100001

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2070
    const v1, 0x7f0d0120

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mDeleteSelected:Landroid/view/MenuItem;

    .line 2074
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3500(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingLeft:I
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4000(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingTop:I
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4100(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingRight:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4200(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingBottom:I
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4300(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->setPadding(IIII)V

    .line 2075
    const/4 v1, 0x1

    return v1

    .line 2072
    :cond_0
    const-string v1, "DownloadActivity"

    const-string v2, "downloading list does not support actionmode"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$102(Lcom/android/providers/downloads/ui/DownloadActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2147
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedListView:Lflyme/support/v7/widget/MzRecyclerView;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3500(Lcom/android/providers/downloads/ui/DownloadActivity;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingLeft:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4000(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingTop:I
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4100(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mPaddingRight:I
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4200(Lcom/android/providers/downloads/ui/DownloadActivity;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lflyme/support/v7/widget/MzRecyclerView;->setPadding(IIII)V

    .line 2148
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 2152
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result v0

    .line 2153
    .local v0, "selectCount":I
    const/4 v1, 0x0

    .line 2154
    .local v1, "title":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2155
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2159
    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mMultiChoiceView:Landroid/support/v7/widget/MultiChoiceView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/MultiChoiceView;->setTitle(Ljava/lang/CharSequence;)V

    .line 2160
    if-eqz p1, :cond_0

    .line 2161
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 2163
    :cond_0
    return-void

    .line 2157
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080076

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 2080
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mRecyclerView:Lflyme/support/v7/widget/MzRecyclerView;

    # invokes: Lcom/android/providers/downloads/ui/DownloadActivity;->getCheckedItemIdSet(Lflyme/support/v7/widget/MzRecyclerView;)Ljava/util/Set;
    invoke-static {v3, v4}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$4400(Lcom/android/providers/downloads/ui/DownloadActivity;Lflyme/support/v7/widget/MzRecyclerView;)Ljava/util/Set;

    move-result-object v0

    .line 2081
    .local v0, "checkedItemIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mEType:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    sget-object v4, Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;->E_Downloaded:Lcom/android/providers/downloads/ui/DownloadActivity$ListViewType;

    if-ne v3, v4, :cond_3

    .line 2082
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->this$0:Lcom/android/providers/downloads/ui/DownloadActivity;

    # getter for: Lcom/android/providers/downloads/ui/DownloadActivity;->mDownloadedAdapter:Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->access$3700(Lcom/android/providers/downloads/ui/DownloadActivity;)Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->getItemCount()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2083
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mSelectView:Landroid/widget/TextView;

    const v4, 0x7f08005b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2088
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v1, v2

    .line 2089
    .local v1, "flag":Z
    :goto_1
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mDeleteSelected:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2090
    if-eqz v1, :cond_2

    .line 2091
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mDeleteSelected:Landroid/view/MenuItem;

    const v4, 0x7f020041

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2097
    .end local v1    # "flag":Z
    :goto_2
    return v2

    .line 2085
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mSelectView:Landroid/widget/TextView;

    const v4, 0x7f080074

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 2088
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 2093
    .restart local v1    # "flag":Z
    :cond_2
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadActivity$SelectionModeCallback;->mDeleteSelected:Landroid/view/MenuItem;

    const v4, 0x7f020042

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2

    .line 2095
    .end local v1    # "flag":Z
    :cond_3
    const-string v3, "DownloadActivity"

    const-string v4, "onPrepareActionMode downloadingview"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
