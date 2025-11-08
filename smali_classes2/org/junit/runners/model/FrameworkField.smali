.class public Lorg/junit/runners/model/FrameworkField;
.super Lorg/junit/runners/model/FrameworkMember;
.source "FrameworkField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/junit/runners/model/FrameworkMember<",
        "Lorg/junit/runners/model/FrameworkField;",
        ">;"
    }
.end annotation


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/junit/runners/model/FrameworkMember;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "FrameworkField cannot be created without an underlying field."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 73
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 35
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 66
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method protected getModifiers()I
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkField;->getField()Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public isShadowedBy(Lorg/junit/runners/model/FrameworkField;)Z
    .locals 0

    .line 40
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/junit/runners/model/FrameworkField;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isShadowedBy(Lorg/junit/runners/model/FrameworkMember;)Z
    .locals 0

    .line 14
    check-cast p1, Lorg/junit/runners/model/FrameworkField;

    invoke-virtual {p0, p1}, Lorg/junit/runners/model/FrameworkField;->isShadowedBy(Lorg/junit/runners/model/FrameworkField;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 78
    iget-object p0, p0, Lorg/junit/runners/model/FrameworkField;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
