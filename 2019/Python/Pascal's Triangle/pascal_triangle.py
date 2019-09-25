# cerner_2^5_2019

def build_triangle(row_count):
    rows = [[1]]
    for i in range(2, row_count + 1):
        cur_row = []
        prev_row = rows[i-2]
        for j in range(0, i):
            if (j == 0) or (j == i - 1):
                cur_row.append(1)
            else:
                cur_row.append(prev_row[j-1] + prev_row[j])
        rows.append(cur_row)
    return rows

def print_triangle(triangle):
    largest_element = triangle[-1][len(triangle[-1]) // 2]
    element_width = len(str(largest_element))
    def format_row(row):
        return ' '.join([str(element).center(element_width) for element in row])
    triangle_width = len(format_row(triangle[-1]))
    for row in triangle:
        print(format_row(row).center(triangle_width))

row_count = int(input("\nPlease enter the number of rows for the triangle: "))
print("")
print_triangle(build_triangle(row_count))
print("")