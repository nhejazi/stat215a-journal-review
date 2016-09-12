def get_PH_data(link, local):
    """
    This is a simple utility function intended to make downloading data from the
    Pitt & Hill 2016 paper in ScienceOpen Research easier.

    Parameters
    ----------
    link : string
           A string giving the Dropbox URL where the data directory is located.

    local : string
            A string providing the name to be given to the directory when
            downloading.
    """

    import os
    import subprocess

    data_dir = os.path.abspath(str(os.getcwd()) + '/../data')

    pull_data= ('curl' + ' ' + '-L' + ' ' + '-o' + data_dir + '/' + str(local) +
                '.zip' + ' ' + str(link))
    unzip_data = ('unzip' + ' ' + data_dir + '/' + str(local) + '.zip' + ' ' +
                  '-d' + data_dir + '/' + str(local))

    subprocess.call(pull_data, shell = True)
    subprocess.call(unzip_data, shell = True)

if __name__ == '__main__':
    get_PH_data(link = 'https://www.dropbox.com/sh/1v9bcqebzrt9xxo/AABta-1pU1G6mTR8yjBV8o9Da?dl=1',
                local = 'PittHill_OSFdata_2016')
