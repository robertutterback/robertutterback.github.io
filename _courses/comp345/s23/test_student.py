import subprocess
import unittest
from pathlib import Path

def run(*args):
  result = subprocess.run(['python3', 'kv.py', *args], stdout=subprocess.PIPE)
  return result.stdout.decode('utf-8')

class TestKV(unittest.TestCase):
  def setUp(self):
    Path('database.txt').unlink(missing_ok=True)
  def test_just_run(self):
    self.assertEqual(run(), "")
  def test_put_get(self):
    self.assertEqual(run("p,1,1"), "")
    self.assertEqual(run("g,1"), "1,1\n")
  def test_not_found(self):
    self.assertEqual(run("g,1234567"), "1234567 not found\n")

if __name__ == '__main__':
  unittest.main()
