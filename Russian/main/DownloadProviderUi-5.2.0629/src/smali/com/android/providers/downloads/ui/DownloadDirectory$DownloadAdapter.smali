.class Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;
.super Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.source "DownloadDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/SingleArrayPartitionAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadDirectory;Landroid/content/Context;Ljava/util/List;[I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "counts"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    .line 229
    invoke-direct {p0, p2, p3, p4}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 230
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 231
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "partitionIndex"    # I

    .prologue
    .line 241
    if-eqz p1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0e018f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 244
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 245
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 246
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/CharSequence;II)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "position"    # I
    .param p4, "partitionIndex"    # I
    .param p5, "object"    # Ljava/lang/CharSequence;
    .param p6, "offset"    # I
    .param p7, "itemBgType"    # I

    .prologue
    const v6, 0x7f080055

    .line 263
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;

    invoke-direct {v0}, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;-><init>()V

    .line 264
    .local v0, "h":Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;
    const v3, 0x7f0d007f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folder_image:Landroid/widget/ImageView;

    .line 265
    const v3, 0x7f0d0080

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folder_name:Landroid/widget/TextView;

    .line 266
    const v3, 0x7f0d0081

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folder_path:Landroid/widget/TextView;

    .line 268
    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folder_image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    add-int/lit8 v5, p3, -0x1

    # invokes: Lcom/android/providers/downloads/ui/DownloadDirectory;->getDirectoryImage(I)I
    invoke-static {v4, v5}, Lcom/android/providers/downloads/ui/DownloadDirectory;->access$000(Lcom/android/providers/downloads/ui/DownloadDirectory;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 269
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    # getter for: Lcom/android/providers/downloads/ui/DownloadDirectory;->download_folders:[Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadDirectory;->access$100(Lcom/android/providers/downloads/ui/DownloadDirectory;)[Ljava/lang/CharSequence;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    aget-object v3, v3, v4

    iput-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->foldername:Ljava/lang/CharSequence;

    .line 270
    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folder_name:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->foldername:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    add-int/lit8 v4, p3, -0x1

    # invokes: Lcom/android/providers/downloads/ui/DownloadDirectory;->getSaveDirectory(I)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/providers/downloads/ui/DownloadDirectory;->access$200(Lcom/android/providers/downloads/ui/DownloadDirectory;I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "save":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folderpath:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folderpath:Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    :cond_0
    iput-object v2, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folderpath:Ljava/lang/CharSequence;

    .line 277
    :cond_1
    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folderpath:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "pathToSave":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 279
    const-string v3, "/storage/emulated/0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    invoke-virtual {v4, v6}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x13

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/android/providers/downloads/ui/DownloadDirectory$ViewHolder;->folder_path:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void

    .line 281
    :cond_3
    const-string v3, "/mnt/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    invoke-virtual {v4, v6}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_4
    const-string v3, "/sdcard"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    invoke-virtual {v4, v6}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :cond_5
    const-string v3, "/storage/sdcard1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->this$0:Lcom/android/providers/downloads/ui/DownloadDirectory;

    const v5, 0x7f08004e

    invoke-virtual {v4, v5}, Lcom/android/providers/downloads/ui/DownloadDirectory;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .locals 8
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Ljava/lang/Object;
    .param p6, "x5"    # I
    .param p7, "x6"    # I

    .prologue
    .line 225
    move-object v5, p5

    check-cast v5, Ljava/lang/CharSequence;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/CharSequence;II)V

    return-void
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "partitionIndex"    # I
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 235
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 236
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f040034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected newView(Landroid/content/Context;IILjava/lang/CharSequence;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I
    .param p3, "partitionIndex"    # I
    .param p4, "object"    # Ljava/lang/CharSequence;
    .param p5, "offset"    # I
    .param p6, "itemBgType"    # I
    .param p7, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 256
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 257
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f04001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Ljava/lang/Object;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/view/ViewGroup;

    .prologue
    .line 225
    move-object v4, p4

    check-cast v4, Ljava/lang/CharSequence;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/ui/DownloadDirectory$DownloadAdapter;->newView(Landroid/content/Context;IILjava/lang/CharSequence;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
