<!DOCTYPE html>
<html>
<head>
  <title>Student Grade Evaluator</title>
  <style>
    body {
      padding: 30px;
    }
    #result {
      margin-top: 20px;
      font-weight: bold;
      color: green;
    }
  </style>
</head>
<body>

  <h2>Student Grade Evaluator</h2>
  <input type="number" id="marks" min="0" max="100" required>
  <button onclick="evaluateGrade()">Enter</button>

  <div id="result"></div>

  <script>
    function evaluateGrade() {
      const marks = Number(document.getElementById("marks").value);
      const resultDiv = document.getElementById("result");
      let result;

      if (isNaN(marks) || marks < 0 || marks > 100) {
        result = "Invalid marks. Please enter a number between 0 and 100.";
      } else if (marks <= 33) {
        result = "You are failed.";
      } else if (marks <= 39) {
        result = "Your grade: E";
      } else if (marks <= 49) {
        result = "Your grade: D";
      } else if (marks <= 59) {
        result = "Your grade: C";
      } else if (marks <= 69) {
        result = "Your grade: B";
      } else if (marks <= 79) {
        result = "Your grade: A";
      } else {
        result = "Your grade: A+";
      }

      resultDiv.innerText = result;
    }
  </script>

</body>
</html>
