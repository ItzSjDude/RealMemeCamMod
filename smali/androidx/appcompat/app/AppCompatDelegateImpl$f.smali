.class Landroidx/appcompat/app/AppCompatDelegateImpl$f;
.super Landroidx/appcompat/app/AppCompatDelegateImpl$e;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl;

.field private final c:Landroidx/appcompat/app/k;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/appcompat/app/k;)V
    .locals 0

    .line 3002
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$e;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 3003
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c:Landroidx/appcompat/app/k;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 3009
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->c:Landroidx/appcompat/app/k;

    invoke-virtual {p0}, Landroidx/appcompat/app/k;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public b()V
    .locals 0

    .line 3014
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$f;->a:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->t()Z

    return-void
.end method

.method c()Landroid/content/IntentFilter;
    .locals 1

    .line 3019
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    .line 3020
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    .line 3021
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    .line 3022
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method
