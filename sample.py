# Sample Python Code: Age Calculator

def main():
    # Get user input
    name = input("Enter your name: ")
    age = int(input("Enter your age: "))

    # Calculate the year they'll turn 100
    current_year = 2024
    years_to_100 = 100 - age
    year_turn_100 = current_year + years_to_100

    # Output the result
    print(f"Hello, {name}! You will turn 100 years old in the year {year_turn_100}.")

# Run the main function
if __name__ == "__main__":
    main()
