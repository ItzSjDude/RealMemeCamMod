.class public final Lcom/oplus/utils/reflect/RefClass;
.super Ljava/lang/Object;
.source "RefClass.java"


# static fields
.field private static final REF_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;"
        }
    .end annotation
.end field

.field private static final REF_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RefClass"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/utils/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    const/16 v0, 0xb

    .line 16
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/oplus/utils/reflect/RefObject;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/oplus/utils/reflect/RefMethod;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-class v1, Lcom/oplus/utils/reflect/RefInt;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-class v1, Lcom/oplus/utils/reflect/RefLong;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefFloat;

    const/4 v5, 0x4

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefDouble;

    const/4 v5, 0x5

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefBoolean;

    const/4 v5, 0x6

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefByte;

    const/4 v5, 0x7

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefChar;

    const/16 v5, 0x8

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefShort;

    const/16 v5, 0x9

    aput-object v1, v0, v5

    const-class v1, Lcom/oplus/utils/reflect/RefConstructor;

    const/16 v5, 0xa

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/utils/reflect/RefClass;->REF_CLASSES:[Ljava/lang/Class;

    .line 32
    :try_start_0
    sget-object v0, Lcom/oplus/utils/reflect/RefClass;->REF_CLASSES:[Ljava/lang/Class;

    array-length v1, v0

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_0

    aget-object v6, v0, v5

    .line 33
    sget-object v7, Lcom/oplus/utils/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Class;

    aput-object v9, v8, v2

    const-class v9, Ljava/lang/reflect/Field;

    aput-object v9, v8, v3

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RefClass"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRealClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 119
    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find class : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefClass"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_a

    const-string v0, "RefClass"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".newInstance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v2, v1

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 78
    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    :goto_1
    if-ge v5, v4, :cond_9

    aget-object v7, v3, v5

    .line 79
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v8, 0x1

    .line 83
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    .line 87
    sget-object v8, Lcom/oplus/utils/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_8

    if-eqz p1, :cond_2

    .line 91
    invoke-static {p1, v7, v8}, Lcom/oplus/utils/reflect/RefClass;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v1

    :goto_2
    if-eqz v9, :cond_3

    .line 93
    invoke-interface {v9}, Lcom/oplus/utils/reflect/IBaseRef;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    if-eq p1, p2, :cond_4

    .line 94
    invoke-static {p2, v7, v8}, Lcom/oplus/utils/reflect/RefClass;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_5

    .line 97
    invoke-static {v1, v7, v8}, Lcom/oplus/utils/reflect/RefClass;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_6

    .line 100
    invoke-interface {v9, v2}, Lcom/oplus/utils/reflect/IBaseRef;->bindStub(Ljava/lang/Object;)V

    .line 102
    :cond_6
    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 104
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/oplus/utils/reflect/RefConstructor;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 105
    move-object v7, v9

    check-cast v7, Lcom/oplus/utils/reflect/RefConstructor;

    move-object v6, v7

    goto :goto_3

    .line 85
    :cond_7
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Already loaded : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v7

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".load"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    return-object v6

    .line 66
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mappingClass is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "*>;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/utils/reflect/RefClass;->getRealClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, p1, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;

    return-object p1
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-static {p0, p1, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/utils/reflect/RefClass;->getRealClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;

    return-object p1
.end method

.method private static newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;)",
            "Lcom/oplus/utils/reflect/IBaseRef;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 129
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/utils/reflect/IBaseRef;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "RefClass"

    if-eqz p0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetClass load : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "targetClass load : null"

    .line 134
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
