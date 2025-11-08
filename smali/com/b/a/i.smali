.class public Lcom/b/a/i;
.super Ljava/lang/Object;
.source "RenderEngineFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/i$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "i"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.protocol.handler.pkgs"

    const-string v1, "org.andresoviedo.util.android"

    .line 160
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    new-instance v0, Lorg/andresoviedo/a/a/a;

    invoke-direct {v0}, Lorg/andresoviedo/a/a/a;-><init>()V

    invoke-static {v0}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/b/a/g;)Lcom/b/a/h;
    .locals 1

    .line 19
    new-instance v0, Lcom/b/a/i$a;

    invoke-direct {v0, p0, p1}, Lcom/b/a/i$a;-><init>(Landroid/app/Activity;Lcom/b/a/g;)V

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/b/a/i;->a:Ljava/lang/String;

    return-object v0
.end method
