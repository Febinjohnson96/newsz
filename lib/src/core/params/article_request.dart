class ArticleRequestParams {
  final String? apiKey;
  final String? language;
  final String? category;
  final int? page;
  final int? pageSize;

  const ArticleRequestParams({
    this.apiKey,
    this.language,
    this.category,
    this.page,
    this.pageSize,
  });

  Map<String, String> toMap() {
    return {
      "q": category ?? '',
      "language": language ?? '',
      "page": "$page",
      "apiKey": apiKey ?? '',
    };
  }
}
