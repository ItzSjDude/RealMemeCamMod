.class public abstract Landroidx/viewpager2/adapter/a$c;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/adapter/a$c$a;
    }
.end annotation


# static fields
.field private static final a:Landroidx/viewpager2/adapter/a$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 853
    new-instance v0, Landroidx/viewpager2/adapter/a$c$1;

    invoke-direct {v0}, Landroidx/viewpager2/adapter/a$c$1;-><init>()V

    sput-object v0, Landroidx/viewpager2/adapter/a$c;->a:Landroidx/viewpager2/adapter/a$c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/a$c$a;
    .locals 0

    .line 868
    sget-object p0, Landroidx/viewpager2/adapter/a$c;->a:Landroidx/viewpager2/adapter/a$c$a;

    return-object p0
.end method

.method public a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/e$b;)Landroidx/viewpager2/adapter/a$c$a;
    .locals 0

    .line 893
    sget-object p0, Landroidx/viewpager2/adapter/a$c;->a:Landroidx/viewpager2/adapter/a$c$a;

    return-object p0
.end method
