/**
 * Check the title of the current browser window
 * @param  {Type}     falseCase     Whether to check if the title matches the
 *                                  expected value or not
 * @param  {Type}     expectedTitle The expected title
 */
export default (element, text) => {
    /**
     * The title of the current browser window
     * @type {String}
     */
    const user = $(element).getText();

    // const user = $(element).getText();
    expect(user).to
        .equal(
            text,
            `Expected username to be "${text}" but found "${user}"`
        );
};
