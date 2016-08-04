.class public Lcom/meizu/experiencedatasync/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BUILD_MASK:Ljava/lang/String;

.field public static final BUILD_TYPE:Ljava/lang/String;

.field private static final DIGITS:[C

.field public static final PRODUCT_MODEL:Ljava/lang/String;

.field private static volatile sIMEI:Ljava/lang/String;

.field private static volatile sMACAddress:Ljava/lang/String;

.field private static volatile sSN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->PRODUCT_MODEL:Ljava/lang/String;

    .line 79
    const-string v0, "ro.build.mask.id"

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_MASK:Ljava/lang/String;

    .line 80
    const-string v0, "ro.build.type"

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_TYPE:Ljava/lang/String;

    .line 426
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 432
    if-nez p0, :cond_0

    .line 433
    const-string v7, ""

    .line 441
    :goto_0
    return-object v7

    .line 435
    :cond_0
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v2, v7, [C

    .line 436
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 437
    .local v3, "c":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v4, v3

    .end local v3    # "c":I
    .local v4, "c":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-byte v1, v0, v5

    .line 438
    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "c":I
    .restart local v3    # "c":I
    sget-object v7, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v4

    .line 439
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "c":I
    .restart local v4    # "c":I
    sget-object v7, Lcom/meizu/experiencedatasync/util/Utils;->DIGITS:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    aput-char v7, v2, v3

    .line 437
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 441
    .end local v1    # "b":B
    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static checkUmid(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 22
    .param p0, "umid"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1317
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1318
    const/16 v20, 0x0

    .line 1360
    :goto_0
    return v20

    .line 1322
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 1323
    const/16 v20, 0x0

    goto :goto_0

    .line 1326
    :cond_1
    const-string v20, "com.meizu.stats"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1328
    .local v15, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1329
    .local v14, "result":Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Lcom/meizu/experiencedatasync/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1330
    .local v5, "imei":Ljava/lang/String;
    sget-object v20, Lcom/meizu/experiencedatasync/UsageStatsConstants;->PREFERENCES_UMID_MAC:Ljava/lang/String;

    sget-object v21, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1331
    .local v8, "mac":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v19, "trueMac":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_2

    .line 1333
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1334
    .local v16, "temp":[Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 1335
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/String;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v7, v3, v4

    .line 1336
    .local v7, "m":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1335
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1340
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "m":Ljava/lang/String;
    .end local v16    # "temp":[Ljava/lang/String;
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 1342
    .local v9, "md5":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1343
    .local v12, "offset":Ljava/lang/String;
    invoke-static {v12}, Lcom/meizu/experiencedatasync/util/Utils;->to16Int(Ljava/lang/String;)I

    move-result v13

    .line 1346
    .local v13, "offsetValue":I
    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    const/16 v20, 0x1

    add-int/lit8 v21, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const/16 v20, 0x0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1350
    .local v17, "tempLeft":Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1352
    .local v10, "md5Left":Ljava/lang/String;
    const/16 v20, 0x11

    const/16 v21, 0x21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 1353
    .local v18, "tempRight":Ljava/lang/String;
    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1356
    .local v11, "md5Right":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v18

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 1357
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1360
    :cond_4
    const/16 v20, 0x1

    goto/16 :goto_0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getDeviceType()I
    .locals 1

    .prologue
    .line 1387
    const/4 v0, 0x1

    return v0
.end method

.method public static getFlymeUid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    :try_start_0
    const-string v3, "account"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 183
    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v3, "com.meizu.account"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 184
    .local v0, "account":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    .line 185
    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "account":[Landroid/accounts/Account;
    .end local v1    # "am":Landroid/accounts/AccountManager;
    :goto_0
    return-object v3

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;

    .line 154
    :goto_0
    return-object v4

    .line 143
    :cond_0
    :try_start_0
    const-string v4, "android.telephony.MzTelephonyManager"

    const-string v5, "getDeviceId"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/meizu/experiencedatasync/util/ReflectHelper;->invokeStatic(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    .local v3, "temp":Ljava/lang/Object;
    if-eqz v3, :cond_1

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 145
    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 146
    .local v2, "imei":Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    sput-object v2, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v2    # "imei":Ljava/lang/String;
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_1
    :goto_1
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sIMEI:Ljava/lang/String;

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLocationLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1308
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1309
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1310
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "country":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, ""

    .line 1312
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .line 1313
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getMACAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 754
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    .line 769
    :goto_0
    return-object v4

    .line 756
    :cond_0
    const-string v4, "com.meizu.stats"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 757
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 758
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 759
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 760
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 761
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 762
    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    .line 763
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "mac_address"

    sget-object v6, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 766
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 767
    const-string v4, "mac_address"

    sget-object v5, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 760
    .restart local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 769
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    sget-object v4, Lcom/meizu/experiencedatasync/util/Utils;->sMACAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMD5([B)[B
    .locals 5
    .param p0, "source"    # [B

    .prologue
    const/4 v2, 0x0

    .line 375
    if-eqz p0, :cond_0

    array-length v3, p0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v2

    .line 379
    :cond_1
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 380
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 381
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 238
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 240
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 242
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 244
    const-string v4, "wifi"

    .line 263
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 246
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 247
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 249
    :cond_1
    const-string v4, "2g"

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    .line 251
    const-string v4, "4g"

    goto :goto_0

    .line 253
    :cond_3
    const-string v4, "3g"

    goto :goto_0

    .line 257
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v4, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v4, "unknown"

    goto :goto_0
.end method

.method public static getOSType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1391
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOperater(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 202
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1399
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_1

    .line 1400
    :cond_0
    const-string v3, ""

    .line 1415
    :goto_0
    return-object v3

    .line 1402
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1403
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_2

    .line 1404
    const-string v3, ""

    goto :goto_0

    .line 1406
    :cond_2
    const/4 v1, 0x0

    .line 1408
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1412
    :goto_1
    if-eqz v1, :cond_3

    .line 1413
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1415
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    const-string v3, ""

    goto :goto_0
.end method

.method private static getProductModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1029
    const-string v1, "ro.meizu.product.model"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1031
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1033
    :cond_0
    return-object v0
.end method

.method private static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->sSN:Ljava/lang/String;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    sget-object v0, Lcom/meizu/experiencedatasync/util/Utils;->sSN:Ljava/lang/String;

    .line 170
    .local v0, "sn":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 166
    .end local v0    # "sn":Ljava/lang/String;
    :cond_1
    const-string v1, "ro.serialno"

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .restart local v0    # "sn":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    sput-object v0, Lcom/meizu/experiencedatasync/util/Utils;->sSN:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSre(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1291
    const/4 v2, 0x0

    .line 1292
    .local v2, "result":Ljava/lang/String;
    const-string v7, "com.meizu.stats"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1293
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v7, "screen_resolution"

    const/4 v8, 0x0

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1294
    if-nez v2, :cond_0

    .line 1295
    const-string v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1296
    .local v6, "wm":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1297
    .local v0, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1298
    .local v4, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1299
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 1300
    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Point;->y:I

    .line 1301
    .local v1, "height":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1302
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "screen_resolution"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1304
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "width":I
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-object v2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1041
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkWorking(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 224
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v3

    .line 227
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 228
    .local v2, "wifiInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 229
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-eq v5, v6, :cond_3

    :cond_2
    if-eqz v1, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    if-ne v5, v6, :cond_0

    :cond_3
    move v3, v4

    .line 231
    goto :goto_0
.end method

.method public static isRoot(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 273
    const-string v6, "device_states"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "deviceStateManager":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 277
    const-string v6, "deivce_states"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v4

    .line 283
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "doCheckState"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 285
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 288
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 289
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 290
    .local v3, "res":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-ne v5, v6, :cond_0

    move v4, v5

    .line 291
    goto :goto_0

    .line 293
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "res":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isWiFiWorking(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 209
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 211
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v2

    .line 214
    :cond_1
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 215
    .local v1, "wifiInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move v2, v3

    .line 216
    goto :goto_0
.end method

.method public static to16Int(Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1365
    const/4 v1, 0x0

    .line 1367
    .local v1, "result":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1383
    :cond_0
    :goto_0
    return v1

    .line 1368
    :catch_0
    move-exception v0

    .line 1369
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "A"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1370
    const/16 v1, 0xa

    goto :goto_0

    .line 1371
    :cond_1
    const-string v2, "B"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1372
    const/16 v1, 0xb

    goto :goto_0

    .line 1373
    :cond_2
    const-string v2, "C"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1374
    const/16 v1, 0xc

    goto :goto_0

    .line 1375
    :cond_3
    const-string v2, "D"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1376
    const/16 v1, 0xd

    goto :goto_0

    .line 1377
    :cond_4
    const-string v2, "E"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1378
    const/16 v1, 0xe

    goto :goto_0

    .line 1379
    :cond_5
    const-string v2, "F"

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1380
    const/16 v1, 0xf

    goto :goto_0
.end method
