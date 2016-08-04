.class public Lcom/android/providers/downloads/ui/DefaultSaveSetting;
.super Landroid/support/v7/app/ActionBarActivity;
.source "DefaultSaveSetting.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;,
        Lcom/android/providers/downloads/ui/DefaultSaveSetting$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private mAlertSelected:I

.field private mDialog:Landroid/app/Dialog;

.field private mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/providers/downloads/ui/DefaultSaveSetting;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DefaultSaveSetting;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DefaultSaveSetting;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    return-object v0
.end method

.method private setActionBar()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 104
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->createActionbarBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    .line 128
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->setActionBar()V

    .line 65
    new-instance v9, Landroid/widget/ListView;

    invoke-direct {v9, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    .line 66
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v9}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->setContentView(Landroid/view/View;)V

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v11, :cond_0

    .line 69
    const-string v9, "max_downloads"

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    const/4 v9, 0x1

    new-array v1, v9, [I

    aput v11, v1, v10

    .line 72
    .local v1, "counts":[I
    new-instance v9, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    invoke-direct {v9, p0, p0, v4, v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;Landroid/content/Context;Ljava/util/List;[I)V

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    .line 73
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->applyMeizuPartitionStyle()V

    .line 75
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    :try_start_0
    const-string v9, "com.android.providers.downloads"

    const/4 v10, 0x2

    invoke-virtual {p0, v9, v10}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 78
    .local v0, "context":Landroid/content/Context;
    const-string v9, "com.android.providers.downloads.save_preference"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0    # "context":Landroid/content/Context;
    :goto_1
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v7

    .line 85
    .local v7, "paddingLeft":I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    .line 86
    .local v8, "paddingRight":I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    .line 87
    .local v6, "paddingBottom":I
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 88
    .local v5, "padAdd":I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v7, v5, v8, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 89
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mListView:Landroid/widget/ListView;

    new-instance v10, Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;

    invoke-direct {v10, p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$1;-><init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 99
    return-void

    .line 79
    .end local v5    # "padAdd":I
    .end local v6    # "paddingBottom":I
    .end local v7    # "paddingLeft":I
    .end local v8    # "paddingRight":I
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x4

    const/4 v3, 0x1

    .line 154
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 158
    :cond_0
    if-ne p3, v6, :cond_3

    .line 159
    sget-boolean v3, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v3, :cond_1

    .line 160
    const-string v3, "Directory"

    invoke-static {p0, v3}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v1, "intent":Landroid/content/Intent;
    const-class v3, Lcom/android/providers/downloads/ui/DownloadDirectory;

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->startActivity(Landroid/content/Intent;)V

    .line 249
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 165
    :cond_3
    const/4 v5, 0x2

    if-ne p3, v5, :cond_4

    .line 166
    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 167
    iput v7, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I

    .line 168
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "max_downloads"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 169
    .local v0, "index":I
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080053

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090005

    new-instance v5, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;

    invoke-direct {v5, p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$2;-><init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDialog:Landroid/app/Dialog;

    .line 199
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 200
    .end local v0    # "index":I
    :cond_4
    const/4 v5, 0x3

    if-ne p3, v5, :cond_5

    .line 201
    invoke-virtual {p2, v3}, Landroid/view/View;->setActivated(Z)V

    .line 202
    iput v7, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mAlertSelected:I

    .line 203
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "delete_limit"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .restart local v0    # "index":I
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080056

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090006

    new-instance v5, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;

    invoke-direct {v5, p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$3;-><init>(Lcom/android/providers/downloads/ui/DefaultSaveSetting;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDialog:Landroid/app/Dialog;

    .line 238
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 239
    .end local v0    # "index":I
    :cond_5
    if-ne p3, v3, :cond_2

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "onlyWifi":Z
    invoke-static {}, Lcom/android/providers/downloads/ui/DeviceUtils;->isChinaMobileCustom()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 242
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "download_only_wifi"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 246
    :goto_1
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "download_only_wifi"

    if-nez v2, :cond_7

    :goto_2
    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DefaultSaveSetting$DownloadAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 244
    :cond_6
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "download_only_wifi"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    :cond_7
    move v3, v4

    .line 246
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 146
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->finish()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 132
    const-string v0, "page_download_setting"

    invoke-static {p0, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 134
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "page_download_setting"

    invoke-static {p0, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStop(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 141
    return-void
.end method

.method public setHistoryClearTime(I)V
    .locals 19
    .param p1, "option"    # I

    .prologue
    .line 360
    if-nez p1, :cond_2

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    const-string v5, "is_visible_in_downloads_ui != \'0\' AND status = \'200\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 364
    .local v10, "downloadCursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 365
    .local v13, "ids":[J
    if-eqz v10, :cond_1

    .line 366
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 367
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v13, v3, [J

    .line 368
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 369
    const/16 v16, 0x0

    .line 370
    .local v16, "index":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 373
    .local v14, "id":J
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "index":I
    .local v17, "index":I
    aput-wide v14, v13, v16

    .line 374
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v16, v17

    .line 375
    .end local v17    # "index":I
    .restart local v16    # "index":I
    goto :goto_0

    .line 377
    .end local v14    # "id":J
    .end local v16    # "index":I
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 378
    if-eqz v13, :cond_1

    array-length v3, v13

    if-lez v3, :cond_1

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/DownloadManager;

    .line 381
    .local v11, "downloadManager":Landroid/app/DownloadManager;
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/app/DownloadManager;->setAccessAllDownloads(Z)V

    .line 382
    invoke-virtual {v11, v13}, Landroid/app/DownloadManager;->remove([J)I

    .line 424
    .end local v10    # "downloadCursor":Landroid/database/Cursor;
    .end local v11    # "downloadManager":Landroid/app/DownloadManager;
    .end local v13    # "ids":[J
    :cond_1
    :goto_1
    return-void

    .line 387
    :cond_2
    const-wide/16 v6, 0x0

    .line 388
    .local v6, "interval":J
    packed-switch p1, :pswitch_data_0

    .line 401
    :goto_2
    new-instance v18, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_HISTORY_CLEAR"

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 402
    .local v18, "intent":Landroid/content/Intent;
    const-string v3, "com.android.providers.downloads"

    const-string v4, "com.android.providers.downloads.DownloadReceiver"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/4 v9, 0x0

    .line 406
    .local v9, "context":Landroid/content/Context;
    :try_start_0
    const-string v3, "com.android.providers.downloads"

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/downloads/ui/DefaultSaveSetting;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 411
    :goto_3
    if-nez v9, :cond_3

    .line 412
    const-string v3, "DownloadManager"

    const-string v4, "setHistoryClearTime get context failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v9    # "context":Landroid/content/Context;
    .end local v18    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-wide/32 v6, 0x36ee80

    .line 391
    goto :goto_2

    .line 393
    :pswitch_1
    const-wide/32 v6, 0x5265c00

    .line 394
    goto :goto_2

    .line 396
    :pswitch_2
    const-wide/32 v6, 0x240c8400

    .line 397
    goto :goto_2

    .line 407
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v18    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 409
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 415
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    move-object/from16 v0, v18

    invoke-static {v9, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 417
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 418
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    const-wide/16 v4, 0x0

    cmp-long v3, v6, v4

    if-nez v3, :cond_4

    .line 419
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 421
    :cond_4
    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
