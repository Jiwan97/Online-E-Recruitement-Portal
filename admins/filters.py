import django_filters
from django_filters import CharFilter


class VFilter(django_filters.FilterSet):
    title_contains = CharFilter(label='Search Job :', field_name='job', lookup_expr='icontains')
