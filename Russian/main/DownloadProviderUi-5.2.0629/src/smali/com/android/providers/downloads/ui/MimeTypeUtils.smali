.class public Lcom/android/providers/downloads/ui/MimeTypeUtils;
.super Ljava/lang/Object;
.source "MimeTypeUtils.java"


# static fields
.field private static final extensionToMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mimeTypeToExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/MimeTypeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/downloads/ui/MimeTypeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    .line 17
    const-string v0, "application/x-openvpn-profile"

    const-string v1, "ovpn"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v0, "application/mtpk"

    const-string v1, "mtpk"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "application/x-mobipocket-ebook"

    const-string v1, "mobi"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v0, "application/epub+zip"

    const-string v1, "epub"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "application/fb2+zip"

    const-string v1, "fb2"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v0, "application/x-prc"

    const-string v1, "prc"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMeizuAudio()V

    .line 25
    invoke-static {}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMeizuVideo()V

    .line 26
    return-void
.end method

.method private static addMeizuAudio()V
    .locals 2

    .prologue
    .line 29
    const-string v0, "audio/x-ms-wma"

    const-string v1, "wma"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "audio/x-pn-realaudio"

    const-string v1, "ram"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "audio/x-realaudio"

    const-string v1, "ra"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "audio/dts"

    const-string v1, "dts"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "audio/ac3"

    const-string v1, "ac3"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static addMeizuVideo()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "video/x-ms-asf"

    const-string v1, "asx"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "video/x-ms-wm"

    const-string v1, "wm"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "video/x-ms-wmx"

    const-string v1, "wmx"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "video/x-ms-asf"

    const-string v1, "wmv"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "video/x-ms-asf"

    const-string v1, "asf"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "video/vnd.rn-realmedia"

    const-string v1, "rm"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "video/vnd.rn-realmedia"

    const-string v1, "rmvb"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v0, "video/flv"

    const-string v1, "flv"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "video/flv"

    const-string v1, "f4v"

    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->addMimeType(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private static addMimeType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/android/providers/downloads/ui/MimeTypeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/android/providers/downloads/ui/MimeTypeUtils;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/providers/downloads/ui/MimeTypeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, ""

    .line 87
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, "dotPosition":I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    .line 84
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/providers/downloads/ui/MimeTypeUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "ext":Ljava/lang/String;
    const/4 v1, 0x0

    .line 65
    .local v1, "mimeType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    sget-object v2, Lcom/android/providers/downloads/ui/MimeTypeUtils;->mimeTypeToExtensionMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mimeType":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 71
    .restart local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
