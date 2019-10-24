clear all; close all; clc;
pkg load image;
[file,path] = uigetfile
imdata = imread(fullfile(path,file));
imdata = rgb2gray(imdata);
imdata=double(imdata);
[x, y] = size(imdata);
if x != y
  warndlg ("The image must be square");
else
  figure(1); subplot(3,3,1); imshow(imdata); title('Gray Image');
  Nn = x;
  for n = 0:Nn-1
    for v = 0:Nn-1
      F = (cos(2*pi*n*v/Nn)+sin(2*pi*n*v/Nn));
      kernel(n+1, v+1) = F;
    end
  end
  figure(1); subplot(3,3,2); imshow(kernel); title('Kernel');
  dht = zeros(Nn);
  dht =  kernel * imdata * kernel;
  figure(1); subplot(3,3,3); imshow(dht); title('DHT');
  figure(1); subplot(3,3,4); imshow(1/Nn^2*kernel*dht*kernel,[]); title('Image Not Compression IDHT');
  count_pic=5; 
  for thresh=.1*[0.001 0.005 0.01 0.05 0.1] * max(max(abs(dht)))
      ind = abs(dht)>thresh;
      count = Nn*Nn-sum(sum(dht));
      Atlow = dht.*ind;
      percent=100-count/(Nn*Nn)*100;
      Alow=(1/Nn^2*kernel*Atlow*kernel);
      coincidence = 0;
      for n = 1:Nn
        for v = 1:Nn
          if dht(n, v) = Atlow(n, v)
            coincidence = coincidence + 1;
          end 
        end
      end
      figure(1), subplot(3,3,count_pic), imshow(Alow,[]); count_pic=count_pic+1;
      drawnow; title([num2str(coincidence * 100 /Nn^2) '% of DHT basis']);
  end
endif