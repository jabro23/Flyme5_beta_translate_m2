.class public Lcom/android/providers/downloads/ui/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# static fields
.field public static EXTERNAL_DIR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadHelper;->EXTERNAL_DIR:Ljava/lang/String;

    return-void
.end method

.method public static checkTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, 0x2f

    .line 434
    const-string v3, "title"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 435
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 436
    :cond_0
    const-string v3, "local_filename"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 437
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 438
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 439
    .local v0, "lastIndex":I
    if-lez v0, :cond_1

    .line 440
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 444
    .end local v0    # "lastIndex":I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 445
    :cond_2
    const-string v3, "hint"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 446
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 447
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 448
    .restart local v0    # "lastIndex":I
    if-lez v0, :cond_3

    .line 449
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 453
    .end local v0    # "lastIndex":I
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 454
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 457
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 458
    .local v1, "length":I
    const/4 v3, 0x4

    if-le v1, v3, :cond_6

    .line 459
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 462
    .end local v1    # "length":I
    :cond_6
    return-object v2
.end method

.method public static createThumbFromImage(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Ljava/io/File;

    .prologue
    const/4 v12, 0x0

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v9, v12

    .line 265
    :cond_0
    :goto_0
    return-object v9

    .line 224
    :cond_1
    const/4 v9, 0x0

    .line 227
    .local v9, "pic":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 234
    if-nez v9, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 241
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 243
    if-nez v0, :cond_2

    move-object v9, v12

    .line 245
    goto :goto_0

    .line 230
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v9, v12

    .line 231
    goto :goto_0

    .line 248
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v8, v1

    .line 250
    .local v8, "maxSize":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v10, v8, v1

    .line 251
    .local v10, "scaleX":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v11, v8, v1

    .line 252
    .local v11, "scaleY":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v11}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 255
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 264
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 256
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "maxSize":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    :catch_1
    move-exception v7

    .line 258
    .restart local v7    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v9, v12

    .line 261
    goto :goto_0
.end method

.method public static createThumbFromVideo(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "video"    # Ljava/io/File;

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 348
    :cond_0
    :goto_0
    return-object v1

    .line 337
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    .local v1, "pic":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 348
    goto :goto_0

    .line 343
    .end local v1    # "pic":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 345
    goto :goto_0
.end method

.method public static getDefaultThumbnailIcon(Ljava/lang/String;)I
    .locals 4
    .param p0, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 80
    const v0, 0xa020159

    .line 81
    .local v0, "iconId":I
    if-nez p0, :cond_0

    move v1, v0

    .line 118
    .end local v0    # "iconId":I
    .local v1, "iconId":I
    :goto_0
    return v1

    .line 84
    .end local v1    # "iconId":I
    .restart local v0    # "iconId":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "lowercaseMimetype":Ljava/lang/String;
    const-string v3, "image/*"

    invoke-static {p0, v3}, Lcom/android/providers/downloads/ui/DownloadHelper;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    const v0, 0xa02014e

    :cond_1
    :goto_1
    move v1, v0

    .line 118
    .end local v0    # "iconId":I
    .restart local v1    # "iconId":I
    goto :goto_0

    .line 87
    .end local v1    # "iconId":I
    .restart local v0    # "iconId":I
    :cond_2
    const-string v3, "audio/*"

    invoke-static {p0, v3}, Lcom/android/providers/downloads/ui/DownloadHelper;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    const v0, 0xa020149

    goto :goto_1

    .line 89
    :cond_3
    const-string v3, "video/*"

    invoke-static {p0, v3}, Lcom/android/providers/downloads/ui/DownloadHelper;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    const v0, 0xa020147

    goto :goto_1

    .line 91
    :cond_4
    const-string v3, "application/rar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "application/x-rar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "application/x-rar-compressed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "application/zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 95
    :cond_5
    const v0, 0xa020162

    goto :goto_1

    .line 96
    :cond_6
    const-string v3, "text/html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 97
    const v0, 0xa02013b

    goto :goto_1

    .line 98
    :cond_7
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 99
    const v0, 0xa020157

    goto :goto_1

    .line 100
    :cond_8
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 101
    const v0, 0xa020134

    goto :goto_1

    .line 102
    :cond_9
    const-string v3, "application/msword"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 105
    :cond_a
    const v0, 0xa020138

    goto :goto_1

    .line 106
    :cond_b
    const-string v3, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 109
    :cond_c
    const v0, 0xa020150

    goto/16 :goto_1

    .line 110
    :cond_d
    const-string v3, "application/vnd.ms-excel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 113
    :cond_e
    const v0, 0xa020160

    goto/16 :goto_1

    .line 114
    :cond_f
    const-string v3, "application/pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    const v0, 0xa02014c

    goto/16 :goto_1
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "file_len":I
    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-object v2

    .line 209
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 210
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "dotPosition":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    .line 212
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-static {p0}, Lcom/android/providers/downloads/ui/DownloadHelper;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "extension":Ljava/lang/String;
    const/4 v1, 0x0

    .line 197
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_0
    return-object v1
.end method

.method public static getThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v4

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 126
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v3, "oriFile":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/providers/downloads/ui/DownloadHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "mimeType":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 133
    const-string v4, "image/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 134
    invoke-static {v3, p0}, Lcom/android/providers/downloads/ui/DownloadHelper;->getThumbFromImage(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 143
    .local v1, "maxSize":I
    invoke-static {v0, v1, v1}, Lcom/android/providers/downloads/ui/DownloadHelper;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    .line 135
    .end local v1    # "maxSize":I
    :cond_3
    const-string v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 136
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadHelper;->createThumbFromVideo(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 137
    :cond_4
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-static {v3, p0}, Lcom/android/providers/downloads/ui/DownloadHelper;->getThumbFromApk(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public static getThumbFromApk(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 352
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-object v3

    .line 358
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 359
    .local v8, "pm":Landroid/content/pm/PackageManager;
    if-eqz v8, :cond_0

    .line 363
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 365
    .local v7, "pkInfo":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_0

    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_0

    .line 369
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 370
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 372
    .local v6, "pRes":Landroid/content/res/Resources;
    new-instance v9, Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v9, v1, v10, v11}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 373
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 378
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v10, :cond_2

    .line 379
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 381
    :cond_2
    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 382
    .local v2, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 384
    .local v3, "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 385
    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .end local v2    # "bd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "pRes":Landroid/content/res/Resources;
    .end local v7    # "pkInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    .line 386
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getThumbFromImage(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "image"    # Ljava/io/File;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    const-wide/16 v10, -0x1

    .line 273
    .local v10, "id":J
    const-wide/16 v12, 0x0

    .line 274
    .local v12, "magic":J
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/providers/downloads/ui/DownloadHelper;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 280
    .local v3, "bmp_uri":Landroid/net/Uri;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/android/providers/downloads/ui/DownloadHelper;->EXTERNAL_DIR:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v18, "Camera/.thumbnails"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadHelper;->createThumbFromImage(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 328
    :cond_0
    :goto_1
    return-object v16

    .line 277
    .end local v3    # "bmp_uri":Landroid/net/Uri;
    :cond_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v3    # "bmp_uri":Landroid/net/Uri;
    goto :goto_0

    .line 284
    :cond_2
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "date_modified"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "mini_thumb_magic"

    aput-object v7, v4, v5

    .line 287
    .local v4, "PROJECTON":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 288
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 290
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_0
    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 291
    .local v6, "args":[Ljava/lang/String;
    const-string v5, "_data=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    const-string v5, "_id"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 299
    :cond_3
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 300
    const-string v5, "mini_thumb_magic"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 302
    :cond_4
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 306
    .end local v6    # "args":[Ljava/lang/String;
    :goto_2
    const-wide/16 v18, -0x1

    cmp-long v5, v10, v18

    if-nez v5, :cond_7

    .line 307
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadHelper;->createThumbFromImage(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_1

    .line 295
    :catch_0
    move-exception v9

    .line 296
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    const-wide/16 v10, -0x1

    .line 299
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_5

    .line 300
    const-string v5, "mini_thumb_magic"

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 302
    :cond_5
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .line 299
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_6

    .line 300
    const-string v7, "mini_thumb_magic"

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 302
    :cond_6
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 310
    :cond_7
    const/16 v16, 0x0

    .line 312
    .local v16, "pic":Landroid/graphics/Bitmap;
    :try_start_2
    invoke-static {v3}, Landroid/media/MiniThumbFile;->instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;

    move-result-object v17

    .line 313
    .local v17, "thumbFile":Landroid/media/MiniThumbFile;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v11}, Landroid/media/MiniThumbFile;->getMagic(J)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v14

    .line 314
    .local v14, "magicFromThumbFile":J
    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-eqz v5, :cond_8

    cmp-long v5, v12, v14

    if-eqz v5, :cond_9

    .line 315
    :cond_8
    const/16 v16, 0x0

    .line 324
    .end local v14    # "magicFromThumbFile":J
    .end local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    :goto_3
    if-nez v16, :cond_0

    .line 325
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadHelper;->createThumbFromImage(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto/16 :goto_1

    .line 317
    .restart local v14    # "magicFromThumbFile":J
    .restart local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    :cond_9
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x3

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v5, v10, v11, v7, v0}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v16

    goto :goto_3

    .line 319
    .end local v14    # "magicFromThumbFile":J
    .end local v17    # "thumbFile":Landroid/media/MiniThumbFile;
    :catch_1
    move-exception v9

    .line 320
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    const/16 v16, 0x0

    goto :goto_3
.end method

.method public static getTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 393
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 394
    :cond_0
    const-string p0, ""

    .line 430
    .end local p0    # "title":Ljava/lang/String;
    .local v3, "lastIndex":I
    :cond_1
    :goto_0
    return-object p0

    .line 398
    .end local v3    # "lastIndex":I
    .restart local p0    # "title":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 399
    .restart local v3    # "lastIndex":I
    if-lez v3, :cond_1

    .line 400
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "filename":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "extension":Ljava/lang/String;
    :try_start_0
    const-string v0, "ISO-8859-1"

    .line 408
    .local v0, "encode":Ljava/lang/String;
    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 410
    const-string v4, "GBK"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 414
    :cond_3
    const-string v0, "GBK"

    .line 415
    if-eqz v2, :cond_4

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 421
    :cond_4
    const-string v0, "GB2312"

    .line 422
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-static {v2, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto/16 :goto_0

    .line 427
    .end local v0    # "encode":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "matchAgainst"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 76
    :goto_0
    return v1

    .line 75
    :cond_0
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 76
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 147
    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    .line 148
    :cond_0
    const/4 v10, 0x0

    .line 191
    :cond_1
    :goto_0
    return-object v10

    .line 151
    :cond_2
    const/4 v12, 0x0

    .line 152
    .local v12, "pic":Landroid/graphics/Bitmap;
    move-object/from16 v1, p0

    .line 155
    .local v1, "bm":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_4

    .line 156
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 159
    :cond_4
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v15, v2, v3

    .line 160
    .local v15, "scaleX":F
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v16, v2, v3

    .line 161
    .local v16, "scaleY":F
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 162
    .local v6, "matrix":Landroid/graphics/Matrix;
    move/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 164
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 173
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 174
    .local v10, "output":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 175
    .local v8, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v13, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    .local v13, "rect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 177
    .local v14, "rectF":Landroid/graphics/RectF;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 178
    .local v11, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v8, v14, v2, v3, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 180
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 181
    invoke-virtual {v8, v12, v13, v13, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 183
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 187
    :cond_5
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 165
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "output":Landroid/graphics/Bitmap;
    .end local v11    # "paint":Landroid/graphics/Paint;
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v14    # "rectF":Landroid/graphics/RectF;
    .end local v15    # "scaleX":F
    .end local v16    # "scaleY":F
    :catch_0
    move-exception v9

    .line 166
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 168
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static setThumbnailAt(Landroid/content/Context;Landroid/widget/ImageView;Landroid/database/Cursor;Ljava/lang/String;J)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 46
    const/4 v8, 0x0

    .line 47
    .local v8, "mimetype":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 48
    invoke-static {p3}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    :cond_0
    if-nez v8, :cond_1

    .line 51
    const-string v1, "media_type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 53
    :cond_1
    invoke-static {p4, p5}, Lcom/android/providers/downloads/ui/CacheManager;->getDownloadBitmap(J)Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;

    move-result-object v6

    .line 54
    .local v6, "downloadBitmap":Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;
    if-nez v6, :cond_4

    .line 55
    invoke-static {v8}, Lcom/android/providers/downloads/ui/DownloadHelper;->getDefaultThumbnailIcon(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 56
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;

    .line 57
    .local v9, "oldTask":Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;
    if-eqz v9, :cond_2

    .line 58
    invoke-virtual {v9}, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;->preempt()V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    :cond_2
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    new-instance v0, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p3

    move-object v3, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;J)V

    .line 64
    .local v0, "task":Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 65
    const-string v1, "load_channel"

    invoke-static {v1}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->forChannel(Ljava/lang/String;)Lcom/android/providers/downloads/ui/ThumbnailExecutor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/android/providers/downloads/ui/ThumbnailExecutor;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 70
    .end local v0    # "task":Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "oldTask":Lcom/android/providers/downloads/ui/ThumbnailAsyncTask;
    :cond_3
    :goto_0
    return-void

    .line 68
    :cond_4
    iget-object v1, v6, Lcom/android/providers/downloads/ui/CacheManager$DownloadBitmap;->mThumb:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
