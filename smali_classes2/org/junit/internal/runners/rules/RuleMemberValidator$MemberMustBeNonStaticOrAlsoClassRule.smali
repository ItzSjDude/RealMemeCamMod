.class final Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;
.super Ljava/lang/Object;
.source "RuleMemberValidator.java"

# interfaces
.implements Lorg/junit/internal/runners/rules/RuleMemberValidator$RuleValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/rules/RuleMemberValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MemberMustBeNonStaticOrAlsoClassRule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/rules/RuleMemberValidator$1;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lorg/junit/internal/runners/rules/RuleMemberValidator$MemberMustBeNonStaticOrAlsoClassRule;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/FrameworkMember<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1200(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    .line 169
    const-class v0, Lorg/junit/ClassRule;

    invoke-virtual {p1, v0}, Lorg/junit/runners/model/FrameworkMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMember;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p0, :cond_1

    if-nez v0, :cond_3

    .line 178
    :cond_1
    invoke-static {p1}, Lorg/junit/internal/runners/rules/RuleMemberValidator;->access$1200(Lorg/junit/runners/model/FrameworkMember;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "must not be static."

    goto :goto_1

    :cond_2
    const-string p0, "must not be static or it must be annotated with @ClassRule."

    .line 183
    :goto_1
    new-instance v0, Lorg/junit/internal/runners/rules/ValidationError;

    invoke-direct {v0, p1, p2, p0}, Lorg/junit/internal/runners/rules/ValidationError;-><init>(Lorg/junit/runners/model/FrameworkMember;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
