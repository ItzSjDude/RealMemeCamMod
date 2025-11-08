.class public Lcom/oplus/utils/reflect/RefChar;
.super Lcom/oplus/utils/reflect/BaseField;
.source "RefChar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/utils/reflect/BaseField<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:C

.field private static final TAG:Ljava/lang/String; = "RefChar"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    sget-object v0, Lcom/oplus/utils/reflect/RefChar;->DEFAULT_TYPES:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    sput-char v0, Lcom/oplus/utils/reflect/RefChar;->DEFAULT_VALUE:C

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    const-string v0, "RefChar"

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/utils/reflect/BaseField;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bindStub(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-super {p0, p1}, Lcom/oplus/utils/reflect/BaseField;->bindStub(Ljava/lang/Object;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)C
    .locals 1

    .line 16
    sget-char v0, Lcom/oplus/utils/reflect/RefChar;->DEFAULT_VALUE:C

    invoke-virtual {p0, p1, v0}, Lcom/oplus/utils/reflect/RefChar;->getWithDefault(Ljava/lang/Object;C)C

    move-result p0

    return p0
.end method

.method public bridge synthetic getDeclaringClass()Ljava/lang/Class;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/oplus/utils/reflect/BaseField;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/oplus/utils/reflect/BaseField;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWithDefault(Ljava/lang/Object;C)C
    .locals 0

    .line 21
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/utils/reflect/RefChar;->getWithException(Ljava/lang/Object;)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefChar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public getWithException(Ljava/lang/Object;)C
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1}, Lcom/oplus/utils/reflect/RefChar;->checkStub(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    iget-object p0, p0, Lcom/oplus/utils/reflect/RefChar;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result p0

    return p0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 0

    .line 7
    invoke-super {p0}, Lcom/oplus/utils/reflect/BaseField;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public set(Ljava/lang/Object;C)V
    .locals 0

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/utils/reflect/RefChar;->checkStub(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    iget-object p0, p0, Lcom/oplus/utils/reflect/RefChar;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefChar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
