.class public Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;
.super Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;
.source "DownloadedRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/providers/downloads/ui/CursorRecyclerAdapter",
        "<",
        "Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final download_diretory:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDistance:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final sdcard_diretory:Ljava/lang/String;

.field private final storage_diretory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "posids"    # Ljava/util/List;
    .param p3, "curspos"    # Ljava/util/HashMap;

    .prologue
    const/4 v2, 0x3

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/CursorRecyclerAdapter;-><init>(Landroid/database/Cursor;Ljava/util/List;Ljava/util/HashMap;)V

    .line 57
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->storage_diretory:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->download_diretory:Ljava/lang/String;

    .line 59
    const-string v0, "/storage/sdcard1"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->sdcard_diretory:Ljava/lang/String;

    .line 67
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 68
    invoke-static {v2}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 69
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mDistance:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mDistance:I

    return v0
.end method


# virtual methods
.method public onBindViewHolder(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;Landroid/database/Cursor;JI)V
    .locals 23
    .param p1, "holder"    # Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "id"    # J
    .param p5, "position"    # I

    .prologue
    .line 88
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->id:J

    cmp-long v4, v4, p3

    if-eqz v4, :cond_1

    .line 89
    move-wide/from16 v0, p3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->id:J

    .line 90
    const-string v4, "local_filename"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "filename":Ljava/lang/String;
    const-string v4, "bytes_so_far"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 94
    .local v10, "currentBytes":J
    const-string v4, "total_size"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 96
    .local v18, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/providers/downloads/ui/DownloadHelper;->checkTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v17

    .line 98
    .local v17, "title":Ljava/lang/String;
    const-string v4, "last_modified_timestamp"

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 100
    .local v20, "when":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1, v5, v6}, Lcom/meizu/common/util/DateTimeUtils;->formatTimeStampString(Landroid/content/Context;JIZ)Ljava/lang/String;

    move-result-object v12

    .line 102
    .local v12, "date":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_time:Landroid/widget/TextView;

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_title:Landroid/widget/TextView;

    invoke-static/range {v17 .. v17}, Lcom/android/providers/downloads/ui/DownloadHelper;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->download_icon:Landroid/widget/ImageView;

    move-object/from16 v6, p2

    move-wide/from16 v8, p3

    invoke-static/range {v4 .. v9}, Lcom/android/providers/downloads/ui/DownloadHelper;->setThumbnailAt(Landroid/content/Context;Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;J)V

    .line 109
    if-eqz v7, :cond_0

    .line 110
    const/16 v4, 0x2f

    invoke-virtual {v7, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 112
    .local v15, "lastIndex":I
    if-lez v15, :cond_2

    .line 113
    const/4 v4, 0x0

    invoke-virtual {v7, v4, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 117
    .local v16, "path":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->storage_diretory:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->storage_diretory:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 119
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->storage_diretory:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 120
    .local v13, "finalpath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_path:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v13    # "finalpath":Ljava/lang/String;
    .end local v14    # "index":I
    .end local v15    # "lastIndex":I
    .end local v16    # "path":Ljava/lang/String;
    :cond_0
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_5

    .line 131
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_size:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v7    # "filename":Ljava/lang/String;
    .end local v10    # "currentBytes":J
    .end local v12    # "date":Ljava/lang/String;
    .end local v17    # "title":Ljava/lang/String;
    .end local v18    # "totalBytes":J
    .end local v20    # "when":J
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0b0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumHeight(I)V

    .line 138
    return-void

    .line 115
    .restart local v7    # "filename":Ljava/lang/String;
    .restart local v10    # "currentBytes":J
    .restart local v12    # "date":Ljava/lang/String;
    .restart local v15    # "lastIndex":I
    .restart local v17    # "title":Ljava/lang/String;
    .restart local v18    # "totalBytes":J
    .restart local v20    # "when":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->download_diretory:Ljava/lang/String;

    move-object/from16 v16, v0

    .restart local v16    # "path":Ljava/lang/String;
    goto :goto_0

    .line 121
    :cond_3
    const-string v4, "/storage/sdcard1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    const-string v4, "/storage/sdcard1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 123
    .restart local v14    # "index":I
    const-string v4, "/storage/sdcard1"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 124
    .restart local v13    # "finalpath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_path:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f08004e

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 126
    .end local v13    # "finalpath":Ljava/lang/String;
    .end local v14    # "index":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_path:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 133
    .end local v15    # "lastIndex":I
    .end local v16    # "path":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;->complete_size:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public bridge synthetic onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Landroid/database/Cursor;JI)V
    .locals 7
    .param p1, "x0"    # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x1"    # Landroid/database/Cursor;
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 23
    move-object v2, p1

    check-cast v2, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    move-object v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->onBindViewHolder(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;Landroid/database/Cursor;JI)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 82
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040024

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;-><init>(Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup;
    .param p2, "x1"    # I

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/providers/downloads/ui/DownloadedRecyclerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method
