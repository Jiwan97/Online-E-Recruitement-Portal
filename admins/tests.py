from django.test import TestCase
from accounts.models import Profile

class TestCase(TestCase):
    @classmethod
    def setUp(cls):
        Profile.objects.create(firstname="Jiwan", lastname="Thapa")

    def test(self):

        lion = Profile.objects.get(firstname="Jiwan")
        expected_res= lion.lastname
        self.assertEqual(expected_res, 'Thapa')
