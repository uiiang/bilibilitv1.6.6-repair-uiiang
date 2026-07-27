.class public interface abstract annotation Lorg/jsoup/internal/FieldsAreNonnullByDefault;
.super Ljava/lang/Object;
.source "FieldsAreNonnullByDefault.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljavax/annotation/Nonnull;
.end annotation

.annotation runtime Ljavax/annotation/meta/TypeQualifierDefault;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation
