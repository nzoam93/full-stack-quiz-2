import React, { useEffect, useState } from 'react';
import "./QuestionIndex.css";
import QuestionIndexItem from './QuestionIndexItem';

const QuestionIndex = () => {
    // Define a state variable to store the posts
    const [questions, setQuestions] = useState([]);
    const [questionNumber, setQuestionNumber] = useState(1)
    const [points, setPoints] = useState(0); //Define a variable to keep track of points

    const numberOfQuestions = Object.values(questions).length;

    //Make a fetch requset to the Rails API endpoint
    useEffect(() => {
        // fetch (`http://localhost:3001/questions`) is blocked by CORS so we need to have the proxy in the package.json file
        // the proxy we put there is automatically prepended to /questions below
        fetch ('/api/questions')
            .then(response => response.json())
            .then(data => setQuestions(data))
            .catch(error => console.log(error));
    }, []);

    //makes it so that it can do the below return without bugging out before questions is fetched from the backend 
    if(!questions[1]){
      return null; 
    }

  //Render the list of questions
  return (
    <div className='question'>
        <div className='question-header'>Questions</div>
        {<QuestionIndexItem 
          question={questions[questionNumber]} 
          questionNumber={questionNumber}
          setQuestionNumber={setQuestionNumber}
          numberOfQuestions={numberOfQuestions}
          points={points} 
          setPoints={setPoints}/>}
        
        <div className='points'>{points} Points</div>
    </div>
  )
}

export default QuestionIndex;