% Ben Juarez - PS4Q1b
CV = [1/12 1/12 1/12; 
    1/12 29/12 1/12;
    1/12 1/12 13/12];

[Q,D]=eig(CV); % calculating eigenvectors
transpose(Q) % tranposing Q to get decorrelating transformation