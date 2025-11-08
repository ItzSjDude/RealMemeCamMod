.class Lcom/oplus/anim/b$6;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Lcom/oplus/anim/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/anim/b;->a(Lcom/oplus/anim/c/f;Ljava/lang/Object;Lcom/oplus/anim/g/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/anim/c/f;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/oplus/anim/g/b;

.field final synthetic d:Lcom/oplus/anim/b;


# direct methods
.method constructor <init>(Lcom/oplus/anim/b;Lcom/oplus/anim/c/f;Ljava/lang/Object;Lcom/oplus/anim/g/b;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/oplus/anim/b$6;->d:Lcom/oplus/anim/b;

    iput-object p2, p0, Lcom/oplus/anim/b$6;->a:Lcom/oplus/anim/c/f;

    iput-object p3, p0, Lcom/oplus/anim/b$6;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/oplus/anim/b$6;->c:Lcom/oplus/anim/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/a;)V
    .locals 2

    .line 855
    iget-object p1, p0, Lcom/oplus/anim/b$6;->d:Lcom/oplus/anim/b;

    iget-object v0, p0, Lcom/oplus/anim/b$6;->a:Lcom/oplus/anim/c/f;

    iget-object v1, p0, Lcom/oplus/anim/b$6;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/anim/b$6;->c:Lcom/oplus/anim/g/b;

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/anim/b;->a(Lcom/oplus/anim/c/f;Ljava/lang/Object;Lcom/oplus/anim/g/b;)V

    return-void
.end method
