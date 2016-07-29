.class public Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
.super Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;
.source "DownloadingRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;,
        Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter",
        "<",
        "Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteSeletedId:J

.field private mDownloadManager:Landroid/app/DownloadManager;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "posids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p3, "curspos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;-><init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    .line 38
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    .line 39
    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 40
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteSeletedId:J

    .line 219
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->updateStatus(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteSeletedId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->deleteItemById(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private deleteItemById(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 140
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 141
    .local v0, "status":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 142
    const-string v1, "DownloadingRecyclerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteItemById STATUS_SUCCESSFUL error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mPositonIds:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    if-nez v1, :cond_3

    .line 147
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    .line 149
    :cond_3
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mDownloadManager:Landroid/app/DownloadManager;

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->remove([J)I

    goto :goto_0
.end method

.method private setDefaultThumbnailAt(Landroid/widget/ImageView;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 11
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v10, 0x2f

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 338
    const/4 v4, 0x0

    .line 339
    .local v4, "mimetype":Ljava/lang/String;
    const-string v6, "title"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 342
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 343
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 344
    .local v3, "length":I
    if-le v3, v9, :cond_e

    .line 345
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 350
    .end local v3    # "length":I
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 353
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 354
    :cond_2
    const-string v6, "local_filename"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "filename":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 356
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 357
    .local v2, "lastIndex":I
    if-lez v2, :cond_3

    .line 358
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 362
    .restart local v3    # "length":I
    if-le v3, v9, :cond_4

    .line 363
    add-int/lit8 v6, v3, -0x4

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 366
    .end local v3    # "length":I
    :cond_4
    invoke-static {v0}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 367
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    move-object v5, v0

    .line 371
    .end local v0    # "filename":Ljava/lang/String;
    .end local v2    # "lastIndex":I
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 372
    :cond_7
    const-string v6, "hint"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "hitName":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    .line 374
    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 375
    .restart local v2    # "lastIndex":I
    if-lez v2, :cond_8

    .line 376
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    :cond_8
    invoke-static {v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 379
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    move-object v5, v1

    .line 383
    .end local v1    # "hitName":Ljava/lang/String;
    .end local v2    # "lastIndex":I
    :cond_a
    if-nez v4, :cond_b

    .line 384
    const-string v6, "media_type"

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 386
    :cond_b
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadHelper;->getDefaultThumbnailIcon(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d

    .line 388
    :cond_c
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 390
    :cond_d
    return-object v5

    .line 347
    .restart local v3    # "length":I
    :cond_e
    const-string v6, "DownloadingRecyclerAdapter"

    const-string v7, "title.length() <= 4"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateStatus(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 154
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mIdsCursorPos:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 156
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mCursor:Landroid/database/Cursor;

    const-string v5, "status"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 157
    .local v0, "status":I
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v2, "values":Landroid/content/ContentValues;
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v6, :cond_4

    .line 161
    :cond_2
    sget-boolean v3, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v4, "Pause"

    invoke-static {v3, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    :cond_3
    const-string v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    :goto_1
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_4
    sget-boolean v3, Lcom/android/providers/downloads/ui/EventAgentUtils;->SWITCHER:Z

    if-eqz v3, :cond_5

    .line 167
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const-string v4, "Start"

    invoke-static {v3, v4}, Lcom/android/providers/downloads/ui/EventAgentUtils;->onAction(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    :cond_5
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/providers/downloads/ui/DownloadActivity;

    invoke-virtual {v3}, Lcom/android/providers/downloads/ui/DownloadActivity;->toastWlan()V

    .line 170
    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    .line 171
    const-string v3, "scanned"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v3, "current_bytes"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v3, "visibility"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    :cond_6
    :goto_2
    const-string v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 175
    :cond_7
    const/16 v3, 0x10

    if-ne v0, v3, :cond_6

    .line 176
    const-string v3, "visibility"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method


# virtual methods
.method public onBindViewHolder(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;Landroid/database/Cursor;JI)V
    .locals 37
    .param p1, "holder"    # Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "id"    # J
    .param p5, "position"    # I

    .prologue
    .line 237
    const-string v5, "status"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 239
    .local v27, "status":I
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->id:J

    cmp-long v5, p3, v12

    if-nez v5, :cond_0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->status:I

    move/from16 v0, v27

    if-ne v0, v5, :cond_0

    const/4 v5, 0x2

    move/from16 v0, v27

    if-eq v0, v5, :cond_0

    .line 335
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v5, "bytes_so_far"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 245
    .local v6, "currentBytes":J
    const-string v5, "total_size"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 247
    .local v32, "totalBytes":J
    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->status:I

    move/from16 v0, v27

    if-eq v0, v5, :cond_2

    .line 248
    move/from16 v0, v27

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->status:I

    .line 249
    const/4 v5, 0x2

    move/from16 v0, v27

    if-eq v0, v5, :cond_1

    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_6

    .line 251
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    sget-object v12, Lcom/meizu/common/widget/CircularProgressButton$State;->PROGRESS:Lcom/meizu/common/widget/CircularProgressButton$State;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    iget-boolean v13, v13, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    iget-boolean v14, v14, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    invoke-virtual {v5, v12, v13, v14}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V

    .line 260
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    const/4 v12, 0x0

    iput-boolean v12, v5, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    .line 262
    :cond_2
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->id:J

    cmp-long v5, v12, p3

    if-eqz v5, :cond_3

    .line 263
    const-wide/16 v12, 0x0

    cmp-long v5, v6, v12

    if-lez v5, :cond_8

    move-wide/from16 v12, p3

    :goto_2
    move-object/from16 v0, p1

    iput-wide v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->id:J

    .line 264
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->setDefaultThumbnailAt(Landroid/widget/ImageView;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v30

    .line 265
    .local v30, "title":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/providers/downloads/ui/DownloadHelper;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 266
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_title:Landroid/widget/TextView;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    move-wide/from16 v0, p3

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->setItemId(JLjava/lang/String;)V

    .line 270
    .end local v30    # "title":Ljava/lang/String;
    :cond_3
    const/16 v21, 0x1

    .line 271
    .local v21, "progress":I
    const-wide/16 v12, 0x0

    cmp-long v5, v32, v12

    if-lez v5, :cond_4

    .line 272
    const-wide/16 v12, 0x64

    mul-long/2addr v12, v6

    div-long v12, v12, v32

    long-to-int v0, v12

    move/from16 v21, v0

    .line 273
    const/16 v5, 0x64

    move/from16 v0, v21

    if-lt v0, v5, :cond_9

    .line 274
    const/16 v21, 0x63

    .line 280
    :cond_4
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12, v6, v7}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "/"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    cmp-long v13, v32, v6

    if-gez v13, :cond_5

    move-wide/from16 v32, v6

    .end local v32    # "totalBytes":J
    :cond_5
    move-wide/from16 v0, v32

    invoke-static {v12, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 282
    .local v25, "sizeStr":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_size:Landroid/widget/TextView;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v5, 0x2

    move/from16 v0, v27

    if-ne v0, v5, :cond_f

    .line 285
    const/16 v26, 0x0

    .line 286
    .local v26, "speedStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 287
    .local v8, "currentTime":J
    invoke-static/range {p3 .. p4}, Lcom/android/providers/downloads/ui/CacheManager;->removeDownloadInfo(J)Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    move-result-object v4

    .line 288
    .local v4, "info":Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
    if-eqz v4, :cond_a

    iget-wide v12, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSize:J

    cmp-long v5, v6, v12

    if-lez v5, :cond_a

    iget-wide v12, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastTime:J

    cmp-long v5, v8, v12

    if-lez v5, :cond_a

    .line 289
    iget-wide v12, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSize:J

    sub-long v22, v6, v12

    .line 290
    .local v22, "bytes":J
    iget-wide v12, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastTime:J

    sub-long v28, v8, v12

    .line 292
    .local v28, "time":J
    const-wide/16 v12, 0x3e8

    mul-long v12, v12, v22

    const-wide/16 v14, 0x7d0

    div-long v10, v12, v14

    .line 293
    .local v10, "speed":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f080047

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 294
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    new-instance v5, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;-><init>(JJJZ)V

    invoke-static {v14, v15, v5}, Lcom/android/providers/downloads/ui/CacheManager;->putDownloadInfo(JLcom/android/providers/downloads/ui/CacheManager$DownloadInfo;)V

    .line 314
    .end local v10    # "speed":J
    .end local v22    # "bytes":J
    .end local v28    # "time":J
    :goto_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_speed:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setProgressForState(I)V

    goto/16 :goto_0

    .line 253
    .end local v4    # "info":Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
    .end local v8    # "currentTime":J
    .end local v21    # "progress":I
    .end local v25    # "sizeStr":Ljava/lang/String;
    .end local v26    # "speedStr":Ljava/lang/String;
    .restart local v32    # "totalBytes":J
    :cond_6
    const/16 v5, 0x10

    move/from16 v0, v27

    if-ne v0, v5, :cond_7

    .line 254
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    sget-object v12, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    iget-boolean v13, v13, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v13, v14}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V

    goto/16 :goto_1

    .line 257
    :cond_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    sget-object v12, Lcom/meizu/common/widget/CircularProgressButton$State;->IDLE:Lcom/meizu/common/widget/CircularProgressButton$State;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    iget-boolean v13, v13, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v13, v14}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V

    goto/16 :goto_1

    .line 263
    :cond_8
    const-wide/16 v12, -0x1

    goto/16 :goto_2

    .line 275
    .restart local v21    # "progress":I
    :cond_9
    if-gtz v21, :cond_4

    .line 276
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 297
    .end local v32    # "totalBytes":J
    .restart local v4    # "info":Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
    .restart local v8    # "currentTime":J
    .restart local v25    # "sizeStr":Ljava/lang/String;
    .restart local v26    # "speedStr":Ljava/lang/String;
    :cond_a
    if-nez v4, :cond_b

    .line 298
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f080047

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 299
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    new-instance v13, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v13 .. v20}, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;-><init>(JJJZ)V

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v13}, Lcom/android/providers/downloads/ui/CacheManager;->putDownloadInfo(JLcom/android/providers/downloads/ui/CacheManager$DownloadInfo;)V

    goto :goto_4

    .line 301
    :cond_b
    iget-wide v12, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSpeed:J

    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_c

    iget-wide v12, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastTime:J

    sub-long v12, v8, v12

    const-wide/16 v14, 0xfa0

    cmp-long v5, v12, v14

    if-lez v5, :cond_e

    .line 302
    :cond_c
    iget-boolean v5, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->speedFlag:Z

    if-eqz v5, :cond_d

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f080047

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v16, 0x0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 306
    :goto_5
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    new-instance v13, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    const-wide/16 v18, 0x0

    iget-boolean v0, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->speedFlag:Z

    move/from16 v20, v0

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-direct/range {v13 .. v20}, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;-><init>(JJJZ)V

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v13}, Lcom/android/providers/downloads/ui/CacheManager;->putDownloadInfo(JLcom/android/providers/downloads/ui/CacheManager$DownloadInfo;)V

    goto/16 :goto_4

    .line 305
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f08003b

    invoke-virtual {v5, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto :goto_5

    .line 309
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f080047

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-wide v0, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSpeed:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 310
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    new-instance v13, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    iget-wide v0, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastTime:J

    move-wide/from16 v16, v0

    iget-wide v0, v4, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;->lastSpeed:J

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    move-wide v14, v6

    invoke-direct/range {v13 .. v20}, Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;-><init>(JJJZ)V

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v13}, Lcom/android/providers/downloads/ui/CacheManager;->putDownloadInfo(JLcom/android/providers/downloads/ui/CacheManager$DownloadInfo;)V

    goto/16 :goto_4

    .line 316
    .end local v4    # "info":Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;
    .end local v8    # "currentTime":J
    .end local v26    # "speedStr":Ljava/lang/String;
    :cond_f
    const/4 v5, 0x1

    move/from16 v0, v27

    if-ne v0, v5, :cond_10

    .line 317
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/meizu/common/widget/CircularProgressButton;->setProgressForState(I)V

    .line 318
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_speed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f08003b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 319
    :cond_10
    const/4 v5, 0x4

    move/from16 v0, v27

    if-ne v0, v5, :cond_12

    .line 320
    const-string v5, "reason"

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 322
    .local v24, "reason":I
    const/4 v5, 0x4

    move/from16 v0, v24

    if-ne v0, v5, :cond_11

    .line 323
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_speed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f08005a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :goto_6
    invoke-static/range {p3 .. p4}, Lcom/android/providers/downloads/ui/CacheManager;->removeDownloadInfo(J)Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    goto/16 :goto_0

    .line 325
    :cond_11
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_speed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f08004d

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 328
    .end local v24    # "reason":I
    :cond_12
    const/16 v5, 0x10

    move/from16 v0, v27

    if-ne v0, v5, :cond_13

    .line 329
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->download_speed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f080033

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-static/range {p3 .. p4}, Lcom/android/providers/downloads/ui/CacheManager;->removeDownloadInfo(J)Lcom/android/providers/downloads/ui/CacheManager$DownloadInfo;

    goto/16 :goto_0

    .line 332
    :cond_13
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->progress_bar:Lcom/meizu/common/widget/CircularProgressButton;

    sget-object v12, Lcom/meizu/common/widget/CircularProgressButton$State;->ERROR:Lcom/meizu/common/widget/CircularProgressButton$State;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;->buttonListener:Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;

    iget-boolean v13, v13, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ButtonListener;->mClicked:Z

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v13, v14}, Lcom/meizu/common/widget/CircularProgressButton;->setState(Lcom/meizu/common/widget/CircularProgressButton$State;ZZ)V

    .line 333
    const-string v5, "DownloadingRecyclerAdapter"

    const-string v12, "something error happened!!!"

    invoke-static {v5, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;JI)V
    .locals 7
    .param p1, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # Landroid/database/Cursor;
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 33
    move-object v2, p1

    check-cast v2, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->onBindViewHolder(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;Landroid/database/Cursor;JI)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 230
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040025

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;-><init>(Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/providers/downloads/ui/DownloadingRecyclerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method
