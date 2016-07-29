.class public Lcom/android/providers/downloads/ui/DownloadDirectory;
.super Landroid/support/v7/app/ActionBarActivity;
.source "DownloadDirectory.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;,
        Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;
    }
.end annotation


# instance fields
.field private download_folders:[Ljava/lang/CharSequence;

.field private download_paths:[Ljava/lang/CharSequence;

.field private mDownloadAdapter:Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private positionSelected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->positionSelected:I

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadDirectory;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadDirectory;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getDirectoryImage(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadDirectory;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadDirectory;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_folders:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadDirectory;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadDirectory;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getSaveDirectory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDirectoryImage(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const v0, 0xa02014e

    .line 213
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 205
    const v0, 0xa020149

    goto :goto_0

    .line 206
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 207
    const v0, 0xa020147

    goto :goto_0

    .line 208
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 209
    const v0, 0xa020162

    goto :goto_0

    .line 210
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 211
    const v0, 0xa020134

    goto :goto_0

    .line 213
    :cond_4
    const v0, 0xa020159

    goto :goto_0
.end method

.method private getSaveDirectory(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x4

    .line 180
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "root":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    :goto_0
    return-object v1

    .line 184
    :cond_0
    if-nez p1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "image_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 186
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "audio_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "video_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 190
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 191
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "compress_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 192
    :cond_4
    if-ne p1, v3, :cond_5

    .line 193
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "apk_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 194
    :cond_5
    const/4 v1, 0x5

    if-ne p1, v1, :cond_6

    .line 195
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "others_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v4, v4, p1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 197
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v2, v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private setActionBar()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 94
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadActivity;->createActionbarBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(I)V

    .line 97
    :cond_0
    return-void
.end method

.method private setSaveDiretory(ILjava/lang/String;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "root":Ljava/lang/String;
    if-eqz p2, :cond_2

    move-object v1, p2

    .line 164
    .local v1, "save":Ljava/lang/String;
    :goto_1
    if-nez p1, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "image_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 163
    .end local v1    # "save":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 166
    .restart local v1    # "save":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 167
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "audio_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 168
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 169
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "video_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 170
    :cond_5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 171
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "compress_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 172
    :cond_6
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 173
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "apk_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 174
    :cond_7
    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "others_path"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 150
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 151
    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    .line 152
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, "url":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "path":Ljava/lang/String;
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->positionSelected:I

    invoke-direct {p0, v2, v0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->setSaveDiretory(ILjava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->notifyDataSetInvalidated()V

    .line 158
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "url":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->setActionBar()V

    .line 53
    new-instance v9, Landroid/widget/ListView;

    invoke-direct {v9, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    .line 54
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v9}, Lcom/android/providers/downloads/ui/DownloadDirectory;->setContentView(Landroid/view/View;)V

    .line 56
    :try_start_0
    const-string v9, "com.android.providers.downloads"

    const/4 v10, 0x2

    invoke-virtual {p0, v9, v10}, Lcom/android/providers/downloads/ui/DownloadDirectory;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    const-string v9, "com.android.providers.downloads.save_preference"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mPrefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090003

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_folders:[Ljava/lang/CharSequence;

    .line 63
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_paths:[Ljava/lang/CharSequence;

    .line 65
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v12, :cond_0

    .line 67
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_folders:[Ljava/lang/CharSequence;

    aget-object v9, v9, v3

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "i":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 69
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "i":I
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    :cond_0
    const/4 v9, 0x1

    new-array v1, v9, [I

    aput v12, v1, v11

    .line 70
    .local v1, "counts":[I
    new-instance v9, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;

    invoke-direct {v9, p0, p0, v4, v1}, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadDirectory;Landroid/content/Context;Ljava/util/List;[I)V

    iput-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;

    .line 71
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mDownloadAdapter:Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->applyMeizuPartitionStyle()V

    .line 73
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v7

    .line 77
    .local v7, "paddingLeft":I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    .line 78
    .local v8, "paddingRight":I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v6

    .line 79
    .local v6, "paddingBottom":I
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0022

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 80
    .local v5, "padAdd":I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v7, v5, v8, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 81
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->mListView:Landroid/widget/ListView;

    new-instance v10, Lcom/android/providers/downloads/ui/DownloadDirectory$1;

    invoke-direct {v10, p0}, Lcom/android/providers/downloads/ui/DownloadDirectory$1;-><init>(Lcom/android/providers/downloads/ui/DownloadDirectory;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 89
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 138
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v2, p3, -0x1

    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->positionSelected:I

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "com.meizu.action.SAVE_FILE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "prevTitle"

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080052

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "curTitle"

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->download_folders:[Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory;->positionSelected:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 143
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "otg://root"

    aput-object v3, v0, v2

    .line 144
    .local v0, "disableMenus":[Ljava/lang/String;
    const-string v2, "extra_disable_menus"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadDirectory;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadDirectory;->finish()V

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "page_download_directory"

    invoke-static {p0, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStart(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStart()V

    .line 118
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "page_download_directory"

    invoke-static {p0, v0}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onPageStop(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onStop()V

    .line 125
    return-void
.end method
