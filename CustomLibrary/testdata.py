import csv


class CustomKeys:
    def test_data(self, filename):
        data = []
        with open(filename, 'rb') as testfile:
            read = csv.reader(testfile)
            for row in read:
                data.append(row)
        return data
